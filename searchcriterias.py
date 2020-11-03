from db import sqldb


def format_movie_data(movies_data):
    field_names = ['id', 'name', 'imdb_score', 'director', 'genres']
    datatypes = [int, str, float, str, str]

    movies_data = [{field: datatype(data)
                    for field, datatype, data in zip(field_names, datatypes, movie)}
                   for movie in movies_data]

    for movie in movies_data:
        movie['genres'] = movie['genres'].split(';')

    return movies_data


class Validator:
    def __init__(self, name):
        self.name = name

    def __get__(self, instance, clas):
        return instance.__dict__[self.name]


class NonEmptyString(Validator):
    def __set__(self, instance, value):
        if not isinstance(value, str):
            value = None
        elif not value.strip():
            value = None
        # code sanitize input ...
        # some lousy try to avoid sql injection
        instance.__dict__[self.name] = value.replace("\\", '').replace("'", "").strip().title() if value else value


class ListOfNonEmptyString(Validator):
    def __set__(self, instance, value):
        if not isinstance(value, (list, tuple, set)):
            values = None
        else:
            values = []
            for val in value:
                if not isinstance(val, str):
                    continue
                elif not val.strip():
                    continue
                else:
                    print('*'*20, val)
                    values.append(val)
            if not values:
                values = None
        # skipping code to sanitize input ...
        instance.__dict__[self.name] = values


class FloatRange(Validator):
    def __set__(self, instance, value):
        if not isinstance(value, (int, float)):
            value = None
        else:
            value = float(value)
            if value <= 0.0:
                value = 0.0
            elif value >= 10.0:
                value = None
        instance.__dict__[self.name] = value


class Search:
    name = NonEmptyString('name')
    director = NonEmptyString('director')
    genres = ListOfNonEmptyString('genres')
    imdb_score = FloatRange('imdb_score')

    def __init__(self, name=None, imdb_score=0.0, director=None, genres=None):
        self.name = name
        self.imdb_score = imdb_score
        self.director = director
        self.genres = genres

        if self.name:
            movies_data = self.select_by_movie()
            rv = format_movie_data(movies_data)

        elif self.director:
            movies_data = self.select_by_director()
            rv = format_movie_data(movies_data)

            if self.imdb_score:
                rv = [movie for movie in rv if movie['imdb_score'] >= self.imdb_score]
            if self.genres:
                rv = [movie for movie in rv if set(self.genres).issubset(set(movie['genres']))]

        elif self.genres:
            movies_data = self.select_by_genre()
            rv = format_movie_data(movies_data)

            if self.imdb_score:
                rv = [movie for movie in rv if movie['imdb_score'] >= self.imdb_score]

        elif isinstance(self.imdb_score, float):
            movies_data = self.select_by_imdb_score()
            rv = format_movie_data(movies_data)

        else:
            rv = {}

        self.results = rv

    def select_by_genre(self):
        genres_query = """select movie_id from relation 
                          where genre_id=(select id from genres where name='{genre}')"""
        next_genres_query = """select movie_id from relation 
                               where movie_id in ({movie_ids}) 
                               and genre_id=(select id from genres where name='{genre}')"""

        with sqldb() as cursor:
            cursor.execute(genres_query.format(genre=self.genres[0]))
            movie_ids = cursor.fetchall()

            for genre_id in self.genres[1:]:
                if movie_ids:
                    movie_ids = ', '.join([str(id_) for (id_,) in movie_ids])

                    cursor.execute(next_genres_query.format(genre=genre_id, movie_ids=movie_ids))
                    movie_ids = cursor.fetchall()

        movie_ids = ', '.join([str(id_) for (id_,) in movie_ids])
        movie_id_query = "m.id in ({ids})".format(ids=movie_ids)
        movies_data = self.select_by(movie_id_query)

        return movies_data

    def select_by_imdb_score(self):
        query = """
        select
          interested_movies.id,
          interested_movies.name,
          interested_movies.imdb_score,
          interested_movies.director,
          GROUP_CONCAT(g.name SEPARATOR ';') as all_genres
        from
          genres g,  
          relation r,
          (Select m.id, m.name, m.imdb_score, d.name director
           from directors d, movies m
           where imdb_score >= {imdb_score}
           and d.id = m.director_id) as interested_movies
        where
          r.movie_id = interested_movies.id
          and r.genre_id = g.id
        group by
          r.movie_id;
          """

        with sqldb() as cursor:
            cursor.execute(query.format(imdb_score=self.imdb_score))
            movies_data = cursor.fetchall()

        return movies_data

    def select_by_movie(self):
        movie_query = "m.name in ('{name}')".format(name=self.name)
        return self.select_by(movie_query)

    def select_by_director(self):
        director_query = "d.name in ('{name}')".format(name=self.director)
        return self.select_by(director_query)

    @staticmethod
    def select_by(sub_query):
        query = """
                        select
                          interested_movies.id,
                          interested_movies.name,
                          interested_movies.imdb_score,
                          interested_movies.director,
                          GROUP_CONCAT(g.name SEPARATOR ';') as all_genres
                        from
                          genres g,  
                          relation r,
                          (Select m.id, m.name, m.imdb_score, d.name director
                           from directors d, movies m
                           where {}
                           and d.id = m.director_id) as interested_movies
                        where
                          r.movie_id = interested_movies.id
                          and r.genre_id = g.id
                        group by
                          r.movie_id;
                    """
        query = query.format(sub_query)
        print(query)
        with sqldb() as cursor:
            cursor.execute(query)
            movies_data = cursor.fetchall()

        return movies_data


