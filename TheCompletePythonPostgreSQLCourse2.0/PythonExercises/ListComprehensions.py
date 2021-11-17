# List comprehensions 

numbers = [1, 3, 5]
doubled = []

for num in numbers:
    doubled.append(num * 2)


# simplified 

numbers = [1, 3, 5]
doubled = [x * 2 for x in numbers]

# working with strings

friends = ["Sam", "Johan", "Romi", "Jeff"]
starts_s = [friend for friend in friends if friend.startswith("S")]

print(friends)
print(starts_s)
print(friends is starts_s)
print("friends: ", id(friends), "starts_s: ", id(starts_s))

# if you want the lists to be the same thing then ...

friends = ["Sam", "Johan", "Romi", "Jeff"]
starts_s = friends

print(friends)
print(starts_s)
print(friends is starts_s)
print("friends: ", id(friends), "starts_s: ", id(starts_s))
