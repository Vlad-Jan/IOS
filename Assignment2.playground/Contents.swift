//Easy tasks
//1
let fruits = ["Pineapple", "Avocado", "Starfruit", "Qiwi", "I can't think of any other fruit :("]
print(fruits[2])

//2
var favoriteNumbers: Set = [8, 228, 777]
print(favoriteNumbers)// before update
favoriteNumbers.insert(1337)
print(favoriteNumbers)//after update

//3
let programmingLanguages = ["Swift": 2014, "Python": 1991, "Java": 1995]
print(programmingLanguages["Swift"]!) // Swift since it needed for the result

//4
var colors = ["Red", "Yellow", "Gray", "White"]
print(colors)// before update
colors[1] = "Gradient" // update the 2-nd colour
print(colors)// after update

// Medium tasks
//1

let set1: Set = [1, 2, 3, 4]
let set2: Set = [3, 4, 5, 6]
let intersection = set1.intersection(set2)
print(intersection)

//2
var studentScores = ["Tolik": 50, "Vovka": 66, "Ivan": 99]
print(studentScores)//before update
studentScores["Ivan"] = 100
print(studentScores)//after update

//3
let array1 = ["apple", "banana"]
let array2 = ["cherry", "date"]
let mergedArray = array1 + array2
print(mergedArray)

//Hard Tasks
//1
var countryPopulations = ["USA": 331_000_000, "India": 1_380_000_000, "China": 1_440_000_000]
print(countryPopulations)//before update
countryPopulations["Kazakhstan"] = 19_600_000
print(countryPopulations)//after update

//2
let setA: Set = ["cat", "dog"]
let setB: Set = ["dog", "mouse"]
let unionSet = setA.union(setB)
let finalSet = unionSet.subtracting(setB)
print(finalSet)

//3
let studentGrades = [
    "Tolik": [66, 77, 88],
    "Vovka": [52, 92, 72],
    "Ivan": [87, 69, 54]
]
let secondGrade = studentGrades["Vovka"]?[1] ?? 0
    print(secondGrade)

