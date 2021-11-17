# functions example

def user_age_in_seconds():
    user_age = int(input("Enter your age: "))
    age_seconds = user_age * 365 * 24 * 60 * 60 
    print(f"Your age in seconds is {age_seconds}.")

print("Welcome to the age in seconds program!")
user_age_in_seconds()

print("Thanks for playing!")

# Don't reuse names in functions 

# def print():
#     print("Hello, world!")
# ERROR

# friends = ["romi", "Amy"]

# def add_friends():
#     friends_name = input("Enter your friend name: ")
#     friends = friends + [friend_name]

# add_friend()
# ERROR can't use the same var in the same line (shadowing the scope)

