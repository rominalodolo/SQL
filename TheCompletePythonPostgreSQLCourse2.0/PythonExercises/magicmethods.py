# Magic Methods __str__ & __repr__

class Preson:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def __str__(self):
        return f"Person {self.name}, {self.age} years old."

bob = Person("Bob", 35)
print(bob)
