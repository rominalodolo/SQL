# list of three elements 
l = ["Romina", "Bianca", "Lodolo"]


# a tuple 
t = ("Romina", "Bianca", "Lodolo")


# a set (order is not garanteed) 
s = {"Romina", "Bianca", "Lodolo"}

print(l[0])

print(t[2])

l[0] = "Smith"
print(l)

# sets doesn't allow this notation :: ERROR
# print(s[1]) 


# adding to the end of the list 
l.append("Smith")
print(l)

# removing items from a list 
l.remove("Romina")
print(l)

# you can add to a set 
s.add("Princess")
print(s)






