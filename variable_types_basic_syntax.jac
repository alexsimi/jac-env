#variable declaration in jac requires specification, name, type and initial value where necessary
#basic types include int, float, str, bool, list, dict
#example of variable declaration and type annotation

with entry {
    # Basic type annotations (Jac requires you to specify the type for each variable.)
    student_name: str = "Alice";
    grade: int = 95;
    gpa: float = 3.8;
    is_honor_student: bool = True;

    print(f"Student Name: {student_name}");
    print(f"Grade: {grade}");
    print(f"GPA: {gpa}");
    print(f"Honor Student: {is_honor_student}");

}

#local variable 
def add_numbers(a: int, b: int) -> int {
    result: int = a + b;  # Local variable
    return result;
}
with entry {
    sum = add_numbers(5, 10);
    print(f"Sum: {sum}");
}

#Global variables
glob school_name: str = "Jac High School";
glob passing_grade: int = 60;
glob honor_threshold: float = 3.5;

def get_school_info() -> str {
    #:g: school_name; # Accessing global variable
    return f"Welcome to {school_name}";
}

with entry {
    print(get_school_info());
    print(f"Honor threshold is {honor_threshold}");
}

#integers

with entry {
    student_id: int = 12345;
    print(student_id);
}
#floats
with entry {
    average_score: float = 89.5;
    print(average_score);
}

#strings 
with entry {
    student_name: str = "Alice Johnson";
    # You can use f-strings to easily include variables in your output.
    print(f"Student Name: {student_name}");
}

#Booleans 
with entry {
    is_enrolled: bool = True;
    print(f"Is Enrolled: {is_enrolled}");
}

#any for flexible typing
with entry {
    flexible_var: any = "I can be anything!";
    print(flexible_var);
    flexible_var = 42;  # Now it's an integer
    print(flexible_var);
    flexible_var = [1, 2, 3];  # Now it's a list
    print(flexible_var);
}