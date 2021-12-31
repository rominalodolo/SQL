# Class inheritance 

class Device:
    def __init__(self, name, connected_by):
        self.name = name 
        self.connected_by = connected_by
        self.connected = TRUE 

    def __str__(self):
        return f"Device {self.name!r} ({self.connected_by})"

    def disconnect(self):
        self.connected = Flase 
        print("Disconnected.")

    class Printer(Device):
        def __init__(self) -> None:
            super().__init__(name, connected_by)
            self.capacity = capacity
            self.remaining_pages = capacity
        
        def __str__(self) -> str:
            return f"{super().__str__()} ({self.remaining_pages})
