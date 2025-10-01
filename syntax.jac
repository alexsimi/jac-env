#compute average of numbers in a list
def average_numbers(numbers:list[float])->float{
    if len(numbers) == 0 {
        return 0.0;
    }
    return sum(numbers)/len(numbers);
    }

with entry{
    nums = [80.5, 90.0, 90.5, 90.0];
    avg = average_numbers(nums);
    print(f"The average score: {avg}");


# Control flow is familiar
    if avg >= 90.0 {
        print("Excellent performance!");
    } elif avg >= 80.0 {
        print("Good performance!");
    } else {
        print("Needs improvement.");
    }
}