# @classmethod and @staticmethod

class ClassTest:
    def instance_method(self):
        print(f"Called instance_method of {self}")

test = ClassTest()
test.instance_method()
ClassTest.instance_method(test)


    @classmethod
    def static_method():
        print("Called static_method.")

    @static_method
    def static_method():
        print("Called static_method.")


classTest.class_method()


class Book:
    TYPES = ("hardcover", "paperback")

    def __init__(self, name, book_type, wright):
        self.name = name
        self.book_type = book_type
        self.weight = weight 

    def __repr__(self) -> str:
        return