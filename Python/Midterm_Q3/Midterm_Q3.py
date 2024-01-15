import fileinput
filename = input("what is the filename?")
data = fileinput.input(filename)
array = []
for line in data:
    array.append(line.split("\n")[0])

grades = ['A', 'B', 'C', 'D', 'F']
gradesToCount = {'A': 0, 'B': 0, 'C': 0, 'D': 0, 'F': 0}
count = total = 0

for grade in array:
    grade = float(grade)
    if grade >= 0 and grade <= 100:
        if grade >= 80 and grade <= 100:
            gradesToCount['A'] += 1
        elif grade >= 65 and grade < 80:
            gradesToCount['B'] += 1
        elif grade >= 55 and grade < 65:
            gradesToCount['C'] += 1
        elif grade >= 50 and grade < 55:
            gradesToCount['D'] += 1
        else:
            gradesToCount['F'] += 1
        total += grade
        count += 1

print("Number of grades within each letter grade:")
print(gradesToCount)

average = total/count
aboveAverage = 0

for grade in array:
    grade = float(grade)
    if grade >= 0 and grade <= 100:
        if grade > average:
            aboveAverage += 1

print("number of grades above average: ", aboveAverage)
