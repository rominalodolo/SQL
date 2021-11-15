# Advanced Sets Operations

friends = {"Bob", "Sally", "Anne"}
abroad = {"Bob", "Anne"}

local_friends = friends.difference(abroad)
print(local_friends)


# you will get an empty set with this code

friends = {"Bob", "Sally", "Anne"}
abroad = {"Bob", "Anne"}

local_friends = abroad.difference(friends)
print(local_friends)


# calculating total 

local = {"Romina"}
abroad = {"Mary", "Amy"}

friends = local.union(abroad)
print(friends)


# intersection 

art = {"Romina", "Sally", "John", "Roxy"}
science = {"Romina", "Mellisa", "Rory", "Sally", "Adam"}

both = art.intersection(science)
print(both)


# MORE on Set Operators 

set_1 = {1, 2, 3, 4, 5}
set_2 = {3, 4, 5, 6, 7}

# Combine set_1 and set_2
print(set_1.union(set_2))  # {1, 2, 3, 4, 5, 6, 7}

# Find common elements in set_1 and set_2
print(set_1.intersection(set_2))  # {3, 4, 5}

# Find elements in set_1 which are not in set_2
print(set_1.difference(set_2))  # {1, 2}

set_1 = {1, 2, 3, 4, 5}
set_2 = {3, 4, 5, 6, 7}

# Combine set_1 and set_2
print(set_1 | set_2)  # {1, 2, 3, 4, 5, 6, 7}

# Find common elements in set_1 and set_2
print(set_1 & set_2)  # {3, 4, 5}

# Find elements in set_1 which are not in set_2
print(set_1 - set_2)  # {1, 2}


set_1 = {1, 2, 3, 4, 5}
set_2 = {3, 4, 5, 6, 7}
set_3 = {5, 6, 7, 8, 9}

# Combine set_1 and set_2 and set_3
print(set_1 | set_2 | set_3)  # {1, 2, 3, 4, 5, 6, 7, 8, 9}

    # https://blog.teclado.com/python-set-operators/ 