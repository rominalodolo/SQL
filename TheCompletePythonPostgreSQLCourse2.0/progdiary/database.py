import sqlite3


import sqlite3


connection = sqlite3.connect("data.db")

def add_entry(entry_content, entry_date):
    entries.append({"content": entry_content, "date": entry_date})

def view_entries():
  return entries