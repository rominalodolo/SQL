# dictionary - keys and values 
# changing an existing key

friend_ages = {"Romi": 26, "Amy": 30, "Jen": 29}

friend_ages["Romi"] = 27

print(friend_ages)

# Indexing a dictionary 

friends = [
    {"name": "Romi", "age": 27}
    {"name": "Amy", "age": 30}
    {"name": "Jen", "age": 29}
]

print(friends[1]["name"])


# if else 

student_attendance = {"Romi": 26, "Amy": 30, "Jen": 29}

if "Romi" in student_attendance:
    print(f"Romi: {student_attendance['Romi']}")
else:
    print("Romi is not a student in this class")


# for loops 

student_attendance = {"Romi": 26, "Amy": 30, "Jen": 29}

for student, attendance in student_attendance.items()
print(f"{student}: {attendance}")
