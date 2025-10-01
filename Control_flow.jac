# We can specify multiple possible return types using the '|' symbol.
def divide(a: float, b: float) -> float | str {
    # Check if b is zero before dividing.
    if b == 0.0 {
        return "Error: Cannot divide by zero!";
    }
    # If b is not zero, we can safely perform the division.
    return a / b;
}

#assign letter grade based on score
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