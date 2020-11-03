import mysql.connector
from contextlib import contextmanager


@contextmanager
def sqldb():
    mydb = mysql.connector.connect(host="localhost",
                                   user="imdb",
                                   password="imdb123",
                                   database="IMDBDEV")
    cursor = mydb.cursor()

    try:
        yield cursor
    finally:
        # Code to release resource, e.g.:
        cursor.close()
        mydb.commit()
        mydb.close()
