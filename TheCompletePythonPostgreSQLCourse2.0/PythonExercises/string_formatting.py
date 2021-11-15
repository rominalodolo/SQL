# f-strings in Python 

name = "Romina"
greeting = f"Hello, {name}"

print(greeting)

# Template strings with .format()

name = "Romina"
greeting = "Hello, {}"
with_name = greeting.format(name)

print(with_name)

# Longer template 

longer_phrase = "Hello, {}. Today is {}."

formatted = longer_phrase.format("Romina", "Monday")
print(formatted)