def multiply(*args):
    print(args)
    total = 1
    for arg in args:
        total * arg
    
    return total
    
# multiply(1, 3, 5)
# print(multiply(-1))


#def multiply(*args):
    # print(args)
    # total = 1
    # for arg in args:
    #     total = total * arg
    
    # return total
def apply(*args, operator):
    if operator == "*":
        return multiply(args)
    elif operator == "+":
        return