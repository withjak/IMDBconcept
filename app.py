from flask import jsonify, Flask, request
from searchcriterias import Search
from manupluate_db_data import Movie, Validater, InsertDirector, UpdateDirector

# Create the application instance
app = Flask(__name__)


def extract_details(req):
    print(req)
    name = req.get('name', None)
    imdb_score = req.get('imdb_score', None)
    director = req.get('director', None)
    genres = req.get('genres', None)
    return name, imdb_score, director, genres


@app.route('/movie')
def search():
    if not request.json:
        return 'Json body not present in request', 400
    name, imdb_score, director, genres = extract_details(request.json)
    rv = Search(name, imdb_score, director, genres).results
    print(rv)
    return jsonify(rv)


@app.route('/movie', methods=['POST'])
def insert_movie():
    if not request.json:
        return 'Json body not present in request', 400
    name, imdb_score, director, genres = extract_details(request.json)
    try:
        rv = Movie(Validater(name, imdb_score, director, genres)).insert()
    except ValueError as e:
        rv = {"Message": str(e)}
    print(rv)
    return jsonify(rv)


@app.route('/movie', methods=['PUT'])
def update_movie():
    if not request.json:
        return 'Json body not present in request', 400
    name, imdb_score, director, genres = extract_details(request.json)
    try:
        rv = Movie(Validater(name, imdb_score, director, genres)).update()
    except ValueError as e:
        rv = {"Message": str(e)}
    print(rv)
    return jsonify(rv)


@app.route('/director', methods=['POST'])
def insert_director():
    if not request.json:
        return 'Json body not present in request', 400
    name = request.json.get('name')
    try:
        rv = InsertDirector(name).insert()
    except ValueError as e:
        rv = {"Message": str(e)}
    print(rv)
    return jsonify(rv)


@app.route('/director', methods=['PUT'])
def update_director():
    if not request.json:
        return 'Json body not present in request', 400
    name = request.json.get('name', None)
    new_name = request.json.get('new_name', None)
    try:
        rv = UpdateDirector(name, new_name).update()
    except ValueError as e:
        rv = {"Message": str(e)}
    print(rv)
    return jsonify(rv)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
