# Destructuring variables 

t = 5, 11
x, y = t

print(x, y)


# turning into a list in a for loop

student_attendance = {"Romi": 26, "Amy": 30, "Jen": 29}

print(list(student_attendance.items()))

for student, attendance in student_attendance.items():
    print(f"{student}: {attendance}")

# https://blog.teclado.com/destructuring-in-python/ 


people = [("Romi", 27, "Designer")]
name, _, profession = person 

print(name, profession)

# collecting

head, *tail = [1, 2, 3, 4, 5]
print(head)
print(tail)

