import sqlite3


import sqlite3

from matplotlib.pyplot import connect


connection = sqlite3.connect("data.db")


def create_table():
    connection.execute("CREATE TABLE entries (content TEXT, date TEXT);")
    connection.commit()

def add_entry(entry_content, entry_date):
    entries.append({"content": entry_content, "date": entry_date})

def view_entries():
  return entries 