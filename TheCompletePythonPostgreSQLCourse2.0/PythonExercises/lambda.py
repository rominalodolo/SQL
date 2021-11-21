# Lambda Function inputs and outputs 

from typing import Sequence


def add(x, y):
    return x + y 

print(add(5, 7))

# re-writing as a lambda function (short functions)

lambda x, y: x + y 

print(5, 7)


# example 
def double(x):
    return x * 2

sequence = [1, 3, 5 , 9]
doubled = [double(x) for x in sequence]
doubled = map(double, sequence)

# re-writing as a lambda function 

sequence = [1, 3, 5 , 9]
doubled = [(lambda x: x *2)(x) for x in sequence]
doubled = list(map(lambda x: x * 2, sequence))

