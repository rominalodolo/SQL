def named(**kwargs):
    print(kwargs)


named(name="Romi", age=27)

# you can also unpack 

def named(**kwargs:
    print(kwargs)

details = {"name": "Romi", "age": 27}

named(**details) 

# def named(**kwargs):
    # print(kwargs)
       
 # def print_nicely(**kwargs):
    # names(**kwargs)
    # for arg, value in kwargs.items(): 
    # print(f"{arg}: {value}")
     
# print_nicely(name="Romi", age=27)


# def both(*args, **kwargs):
    # print(args)
    # print(kwargs)

# both(1, 3, 5, name="Romi", age=27) 