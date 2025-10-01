def add_numbers(a: int, b: int) -> int {
    result: int = a + b;
    return result;
}

with entry {
    sum = add_numbers(5, 10);
    print(f"Sum: {sum}");
}


#Basic calculator program
# calculator.jac
def add(a: float, b: float) -> float {
    return a + b;
}

def subtract(a: float, b: float) -> float {
    return a - b;
}

def multiply(a: float, b: float) -> float {
    return a * b;
}

def divide(a: float, b: float) -> float {
    if b == 0.0 {
        print("Error: Division by zero");
        return 0.0;  # Return zero or handle as needed
    }
    return a / b;
}

with entry {
    print("=== Simple Calculator ===");

    # Test calculations
    num1: float = 10.0;
    num2: float = -3.589;

    print(f"{num1} + {num2} = {add(num1, num2)}");
    print(f"{num1} - {num2} = {subtract(num1, num2)}");
    print(f"{num1} * {num2} = {multiply(num1, num2)}");
    print(f"{num1} / {num2} = {divide(num1, num2)}");
}


#Basic Object Oriented Programming
obj Student {
    has name: str;
    has age: int;
    has gpa: float;

     # Notice the 'self' parameter, which refers to the object itself.
    def get_info() -> str {
        return f"Name: {self.name}, Age: {self.age}, GPA: {self.gpa}";
    }
}

with entry {
    student: Student = Student("Alice", 20, 3.8);  # Create a new Student object
    print(student.get_info());
}