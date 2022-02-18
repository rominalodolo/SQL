import


from multiprocessing import connection
import sqlite3
from tkinter import INSERT


CREATE_MOVIES_TABLE = """ CREATE TABLE IS NOT EXISTS movies (
    title TEXT,
    release_timestamp REAL,
    watched INTEGER
);"""

INSERT_MOVIES = "INSERT INTO movies () VALUES (?, ?, 0);"
SELECT_ALL_MOVIES = "SELECT * FROM movies;"
SELECT_UPCOMING_MOVIES = "SELECT * FROM movies WHERE release_timestamp > ?;"
SELECT_WATCHED_MOVIES = "SELECT * FROM  movies WHERE watched = 1;"

connection = sqlite3.connect("data.db")