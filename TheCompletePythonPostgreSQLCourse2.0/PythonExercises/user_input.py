# User input 

name = input("Enter your name: ")
print(name)

# encoding maths (you have to convert the string to number)

size_input = input("How big is your house (in square feet): ")
square_feet = int(size_input)
square_meters = size_input / 10.8 
print(square_meters)

# adding an f string 

size_input = input("How big is your house (in square feet): ")
square_feet = int(size_input)
square_meters = size_input / 10.8 
print(f"{square_feet} square feet is {square_meters} square meters.")
