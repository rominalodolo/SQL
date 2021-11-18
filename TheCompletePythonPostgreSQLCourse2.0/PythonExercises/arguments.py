# Functions Arguments and Parameters 

def add(x,y):
    pass

add(5, 3)

# OR

def add(x,y):
    result = x + y 
    print(result)

add(5, 3)

# No parameters 

def say_hello():
    print("Hello!")

say_hello("Bob")

# this will result in an ERROR

# Name parameter - positional 

def say_hello(name, surname):
    print(f"Hello, {name} {surname}")

say_hello("Bob", "Smith")



# Named/ Keyword arguments 
def say_hello(name, surname):
    print(f"Hello, {name} {surname}")

say_hello(surname="Bob", name="Smith")


# Using key word arguments 

def divide(dividend, divisor):
    if divisor != 0:
        print(dividend / divisor)
    else:
        print("You fool!")

divide(dividend=15, divisor=0)
