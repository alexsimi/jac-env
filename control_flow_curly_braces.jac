#if statement
def divide(a:float,b:float)->float|bool{
    if b == 0.0 {
        return False;
    }
    return a / b;
}

with entry{
    result1:float|str = divide(10.0,2.0);
    print(f"10.0 / 2.0 = {result1}");

    result2:float|str = divide(10.0,0.0);
    print(f"10.0 / 0.0 = {result2}");
}


#conditional logic if-elif-else

def classify_grade(score: int) -> str {
    if score >= 90 {
        return "A";
    } elif score >= 80 {
        return "B";
    } elif score >= 70 {
        return "C";
    } elif score >= 60 {
        return "D";
    } else {
        return "F";
    }
}

with entry {
    # Raw test scores
    test_scores: list[int] = [78, 85, 92, 69, 88, 95, 72];

    # Get passing grades (70 and above)
    passing_scores: list[int] = [score for score in test_scores if score >= 70];
    print(f"Passing scores: {passing_scores}");

    # Apply curve (+5 points)
    curved_scores: list[int] = [score + 5 for score in test_scores];
    print(f"Curved scores: {curved_scores}");

    # Classify each score
    grades: list[str] = [classify_grade(score) for score in test_scores];
    print(f"Grades: {grades}");
}


#working with loops

#Traditional for loop
def process_class_grades(grades: dict[str, list[int]]) -> None {
    # This loop iterates through the key-value pairs in the dictionary.
    for (student, student_grades) in grades.items() {
        total: int = 0;
        # This nested loop iterates through the list of grades for each student.
        for grade in student_grades {
            total += grade;
        }
        average: float = total / len(student_grades);
        print(f"{student}'s average grade: {average}");
    }
}

with entry {
    class_grades: dict[str, list[int]] = {
        "Alice": [88, 92, 85],
        "Bob": [79, 83, 77],
        "Charlie": [95, 89, 92]
    };

    process_class_grades(class_grades);
}

#for-to-by loop
with entry {
    print("Converting scores (0-100) to GPA (0-4.0):");

    # This loop starts at 60, continues as long as score <= 100,
    # and increases the score by 10 in each step.
    for score = 60 to score <= 100 by score += 10 {
        gpa: float = (score - 60) * 4.0 / 40.0;
        print(f"Score {score} -> GPA {gpa}");
    }
}

