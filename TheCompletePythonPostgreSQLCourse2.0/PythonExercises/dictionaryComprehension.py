# Dictionary Comprehensions 

users = [
    (0, "Jane", "password"),
    (1, "Dan", "7091995"),
    (2, "Jason", "longestPassword12"),
    (3, "Bobby", "1234"),
]

username_mapping = {user[1]: user for user in users}

print(username_mapping)

# for user in users: 
