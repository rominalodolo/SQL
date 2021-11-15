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