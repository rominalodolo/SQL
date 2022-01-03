# Class Composition 

class BookShelf: 
    def __init__(self, quantity):
        self.quantity = quantity
    
    def __str__(self) -> str:
        return f"BookShelf with {self.quantity} books."

shelf = BookShelf(300)

print(shelf)