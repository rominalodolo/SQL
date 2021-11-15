# in keyword - checking for membership 

friends = ["Romina", "Mellisa", "Rory", "Sally", "Adam"]
print("Rory" in friends)


# new example 

movies_watched = {"Finding Nemo", "The Italian Job", "Finding Dory"}
user_movie = input("What's your favorite movie, Romina? " )

print(user_movie in movies_watched)


# if else 

movies_watched = {"Finding Nemo", "The Italian Job", "Finding Dory"}
user_movie = input("What's your favorite movie, Romina? " )

if user_movie in movies_watched:
    print(f"Your fav movie is {user_movie}.")
else: 
    print("You haven't told me about that one before, Romina.")


# new example magic number app

number = 6
user_input = input("Enter 'y' if you would like to play.").lower()

if user_input == "y":
    user_number = int(input("Guess our number: "))
    if user_number == number: 
        print("You guessed correctly!")
    else:
        print("Sorry, Guess again.")


# or we create a tuple with 'y' 'Y' 

number = 6
user_input = input("Enter 'y' if you would like to play.")

if user_input in ("y", "Y"):
    user_number = int(input("Guess our number: "))
    if user_number == number: 
        print("You guessed correctly!")
    else:
        print("Sorry, Guess again.")

