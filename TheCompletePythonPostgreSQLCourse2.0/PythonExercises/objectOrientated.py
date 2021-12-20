# Object Orientation in Programming 
"""allows dev to write code in a diff way for simpler code """

"""Throws an error """
# student = {"name": "Romi", "grades": (89, 90, 93, 78, 81)}

# def average(sequence):
#     return sum(sequence) / len(sequence)

# print(average(student["grades"]))
# print(student.average())


# init is a method because it is in a class

""" class Student:
    def __init__(self):
        self.name = "Romina"
        self.grades = (89, 90, 93, 78, 81)

    # the average method 
    def average(self): 
        return sum(self.grades) / len(self.grades)

student = Student()
print(student.name)
print(student.grades) """



class Student:
    def __init__(self, name, grades):
        self.name = name
        self.grades = grades
         
    def average_grade(self): 
        return sum(self.grades) / len(self.grades)

student = Student("Bianca", (89, 90, 93, 78, 81))
student2 = Student("Bradley", (100, 99, 100, 79, 85))

print(student.name)
print(student.average_grades())
