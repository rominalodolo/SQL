import sqlite3

from matplotlib.pyplot import connect


connection = sqlite3.connect("data.db")


def create_table():
    with connection:
        connection.execute("CREATE TABLE entries (content TEXT, date TEXT);")

def add_entry(entry_content, entry_date):
    connection.execute()

def view_entries():
  return entries 