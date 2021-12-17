def named(**kwargs):
    print(kwargs)


named(name="Romi", age=27)

# you can also unpack 

def named(name, age):
    print(name, age)

details = {"name": "Romi", "age": 27}

named(**details) 