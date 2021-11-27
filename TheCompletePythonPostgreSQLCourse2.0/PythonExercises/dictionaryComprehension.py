# Dictionary Comprehensions 

users = [
    (0, "Jane", "password"),
    (1, "Dan", "7091995"),
    (2, "Jason", "longestPassword12"),
    (3, "Bobby", "1234"),
]

username_mapping = {user[1]: user for user in users}

print(username_mapping)


    #  alternative way to code the outputs

# for user in users:
#     if user[1] == "Dan":
#         print(user)

# user_input = input("Enter your username: ")
# user_input = input("Enter your password: ")
# _, username, password =  username_mapping[username_input]

# if password_input == password:
#     print("Your details are correct!")
# else: 
#     print("Your details are incorrect.")