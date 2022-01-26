import sqlite3


entries = []
connection = sqlite3

def add_entry(entry_content, entry_date):
    entries.append({"content": entry_content, "date": entry_date})

def view_entries():
  return entries