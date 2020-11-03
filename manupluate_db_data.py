from db import sqldb


class NonEmptyString:
    expected_type = str

    def __init__(self, name):
        self.name = name

    def __get__(self, instance, clas):
        return instance.__dict__[self.name]

    def __set__(self, instance, value):
        value = self.validate(self.name, value)
        instance.__dict__[self.name] = value

    def validate(self, name, value):
        if not isinstance(value, str):
            raise TypeError(f'{name} - expected {self.expected_type} got "{type(value)}"')
        elif value.strip() == '':
            raise ValueError(f'{name} - cannot be an empty')
        # some lousy try to avoid sql injection
        return value.replace("\\", '').replace("'", "").strip().title()


class ListOfNonEmptyString(NonEmptyString):
    expected_type = list

    def __set__(self, instance, value):

        if not isinstance(value, self.expected_type):
            raise TypeError(f'{self.name} - expected {self.expected_type} got "{type(value)}"')
        if not value:
            raise ValueError(f'{self.name} - cannot be an empty {self.expected_type}')

        genres = []
        for genre in value:
            genre = self.validate('entry in genres', genre)
            genres.append(genre)

        instance.__dict__[self.name] = genres


class Validater:
    """Avoid data curroption bugs

       Checks input is as desired

    """
    movie_name = NonEmptyString('movie_name')
    director = NonEmptyString('director')
    genres = ListOfNonEmptyString('genres')

    def __init__(self, movie_name, imdb_score, director, genres):

        self.movie_name = movie_name
        self.director = director
        self.imdb_score = imdb_score
        self.genres = genres

    @property
    def imdb_score(self):
        return self._imdb_score

    @imdb_score.setter
    def imdb_score(self, value):
        value = float(value)
        if 0.0 <= value <= 10.0:
            self._imdb_score = round(value, 1)
        else:
            raise ValueError(f'imdb_score - allowed range [0.0, 10.0] got {value}')

    def __repr__(self):
        return f'{self.__class__.__name__}({self.movie_name!r}, {self.imdb_score!r},' \
               f' {self.director!r}, {self.genres!r})'


class Movie:

    def __init__(self, movie):
        if not isinstance(movie, Validater):
            raise TypeError(f'movie - expected instance of type "Validater" got {type(movie)}')
        self.movie = movie

    def __repr__(self):
        return f'{self.__class__.__name__}({self.movie!r})'

    def check_genres_exists(self):
        """ Raise error if genre do not exist in db
            This helps in avoiding accidentaly misspelled genres in db
        """
        genres_exists = "select id, name from genres where name in ('{names}');"

        with sqldb() as cursor:
            cursor.execute(genres_exists.format(names="', '".join(self.movie.genres)))
            records = cursor.fetchall()

            genres = {}
            if records:
                # genre: id_
                genres = {genre: id_ for id_, genre in records}
            not_in_db = set(self.movie.genres) - set(genres.keys())
            return genres, not_in_db

    def check_director_exists(self):
        director_exists = "select id from directors where name='{name}';"
        with sqldb() as cursor:
            cursor.execute(director_exists.format(name=self.movie.director))
            id_ = cursor.fetchall()
            if id_:
                director_id, = id_[0]
                return director_id
            return None

    def check_movie_exists(self):
        movie_exists = "select id from movies where name='{name}';"
        with sqldb() as cursor:
            cursor.execute(movie_exists.format(name=self.movie.movie_name))
            id_ = cursor.fetchall()
            if id_:
                movie_id, = id_[0]
                return movie_id
            return None

    def update(self):
        movie_id = self.check_movie_exists()
        if not movie_id:
            raise ValueError('Movie do not exist in database')

        director_id = self.check_director_exists()
        if not director_id:
            raise ValueError('Director do not exist in database')

        genres, not_in_db = self.check_genres_exists()
        if not_in_db:
            raise ValueError(f'genres: {not_in_db} do not exist in database')

        # update query
        update_director_id_imdb_score = "UPDATE movies SET director_id = {id_}, " \
                                        "imdb_score={imdb_score} WHERE name = '{movie_name}'"
        # delete query
        delete_genres_mapping = "DELETE FROM relation WHERE movie_id={id_}"
        # insert query
        insert_genres_mapping = "INSERT INTO relation (movie_id, genre_id) VALUES {};"

        # u cannot update a movie name
        # to do that delete the movie and reinsert it

        # update director and imdb_score
        with sqldb() as cursor:
            cursor.execute(update_director_id_imdb_score.format(movie_name=self.movie.movie_name,
                                                                imdb_score=self.movie.imdb_score,
                                                                id_=director_id))
        print('Updated director')

        # update genres
        genres_mapping = ', '.join(str((movie_id, id_)) for id_ in genres.values())
        with sqldb() as cursor:
            # delete all entries for movie in relation table
            cursor.execute(delete_genres_mapping.format(id_=movie_id))
            # create new entries
            cursor.execute(insert_genres_mapping.format(genres_mapping))

    def insert(self):
        movie_id = self.check_movie_exists()
        if movie_id:
            raise ValueError('Movie already exist in database')

        director_id = self.check_director_exists()
        if not director_id:
            raise ValueError('Director do not exist in database')

        genres, not_in_db = self.check_genres_exists()
        if not_in_db:
            raise ValueError(f'genres: {not_in_db} do not exist in database')

        # insert query
        insert_genres_mapping = """INSERT INTO relation (movie_id, genre_id) VALUES {};"""
        insert_movie = """INSERT INTO movies (name, imdb_score, director_id) 
                          VALUES ('{name}', {imdb_score}, {director_id})"""

        # insert movie, director id, imdb score
        with sqldb() as cursor:
            # create new entries
            cursor.execute(insert_movie.format(name=self.movie.movie_name,
                                               imdb_score=self.movie.imdb_score,
                                               director_id=director_id))
        # get movie_id
        movie_id = self.check_movie_exists()

        genres_mapping = ', '.join(str((movie_id, id_)) for id_ in genres.values())
        with sqldb() as cursor:
            # create new entries in relation table
            cursor.execute(insert_genres_mapping.format(genres_mapping))


class Director:
    director = NonEmptyString('director')

    def __init__(self, director):
        self.director = director

    def check_director_exists(self):
        director_exists = "select id from directors where name='{name}';"
        with sqldb() as cursor:
            cursor.execute(director_exists.format(name=self.director))
            id_ = cursor.fetchall()
            if id_:
                director_id, = id_[0]
                return director_id
            return None


class InsertDirector(Director):
    def insert(self):
        insert_director = "INSERT INTO directors (name) VALUES ('{name}')"

        director_id = self.check_director_exists()
        if director_id:
            raise ValueError('Director Already exist in database')
        with sqldb() as cursor:
            cursor.execute(insert_director.format(name=self.director))
        return {'id': self.check_director_exists()}


class UpdateDirector(Director):
    new_director = NonEmptyString('new_director')

    def __init__(self, director, new_director):
        self.new_director = new_director
        super().__init__(director)

    def update(self):
        update_director = "UPDATE directors SET name = '{new_name}' WHERE name = '{old_name}'"

        director_id = self.check_director_exists()
        # also check if new_name of director is already occupied b another director
        # for now it will fail as name is primary key
        # hack for now
        if Director(self.new_director).check_director_exists():
            raise ValueError(f'Another Director named {self.new_director} already exist in database')

        if not director_id:
            raise ValueError(f'Director do not exist in database')
        with sqldb() as cursor:
            cursor.execute(update_director.format(new_name=self.new_director, old_name=self.director))
