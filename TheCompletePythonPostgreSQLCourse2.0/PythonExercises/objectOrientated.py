# Object Orientation in Programming 
"""allows dev to write code in a diff way for simpler code """


student = {"name": "Romi", "grades": (89, 90, 93, 78, 81)}

def average(sequence):
    return sum(sequence) / len(sequence)

print(average(student["grades"]))
print(student.average())
