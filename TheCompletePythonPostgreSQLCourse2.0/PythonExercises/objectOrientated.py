# Object Orientation in Programming 
"""allows dev to write code in a diff way for simpler code """

"""Throws an error """
# student = {"name": "Romi", "grades": (89, 90, 93, 78, 81)}

# def average(sequence):
#     return sum(sequence) / len(sequence)

# print(average(student["grades"]))
# print(student.average())


# init is a method because it is in a class

class Student:
    def __init__(self):
        self.name = "Romina"
        self.grades = (89, 90, 93, 78, 81)

student = Student()
print(student.name)
print(student.grades)
