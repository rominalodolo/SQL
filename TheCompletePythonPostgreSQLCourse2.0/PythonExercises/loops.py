# Loops 

number = 6
user_input = input("Would like to play? (Y/n) ")

while user_input != "n":
    user_number = int(input("Guess our number: "))
    if user_number == number: 
        print("You guessed correctly!")
    elif abs(number - user_number) == 1:
        print("You were off by one.")
    else:
        print("Sorry, Guess again.")
        
    user_input = input("Would like to play? (Y/n) ")


# while true

number = 6

while True:
    user_input = input("Would like to play? (Y/n) ")

    if user_input == "n":
        break

    user_number = int(input("Guess our number: "))
    if user_number == number: 
        print("You guessed correctly!")
    elif abs(number - user_number) == 1:
        print("You were off by one.")
    else:
        print("Sorry, Guess again.")
    

# For loop 

friends = ["John", ""]