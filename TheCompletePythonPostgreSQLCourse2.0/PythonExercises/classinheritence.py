# Class inheritance 

class Device:
    def __init__(self, name, connected_by):
        self.name = name 
        self.connected_by = connected_by
        self.connected = TRUE 

    def __str__(self):
        return f"Device {self.name}"