# Magic Methods __str__ & __repr__

class Preson:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def __str__(self):

bob = Person("Bob", 35)
print(bob)
