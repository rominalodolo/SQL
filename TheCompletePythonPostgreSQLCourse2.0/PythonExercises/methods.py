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

    def __repr__(self):
        return f"<Book {self.name}, {self.book_type}, weighing {self.weight}g>"

    @classmethod
    def hardcover(cls, name, page_weight):
        return cls(name, cls.TYPES[0], page_weight + 100)

    @classmethod
    def paperback(cls, name, page_weight):
        return Book(name, Book.TYPES[1], page_weight)

book = Book.hardcover("Harry Potter", 1500)
light = Book.paperback("Python 101", 600)

print(book)


