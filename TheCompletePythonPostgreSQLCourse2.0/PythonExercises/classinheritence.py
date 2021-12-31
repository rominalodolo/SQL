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
            super().__init__(name, connected)
            self.capacity = capacity
            self.r

