# title, release_date, watched 

from tkinter import INSERT


CREATE_MOVIES_TABLE = """ CREATE TABLE IS NOT EXISTS movies (
    title TEXT,
    release_timestamp REAL,
    watched INTEGER
);"""

INSERT_MOVIES = "INSERT INTO movies () VALUES (?, ?, 0);"
