class User:
    def __init__(self, age, gender, height, weight):
        self.age = int(age)
        self.gender = gender
        self.height = height
        self.weight = weight

    def __str__(self):
        return f"{self.age} - {self.gender} - {self.height} - {self.weight}"
