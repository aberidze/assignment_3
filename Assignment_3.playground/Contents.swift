/* ------------------------- ამოცანა 1 ------------------------- */
print("1) პირველი და ბოლო ელემენტების გაცვლა")
print("--------------------------------------------------")
var array1: [Int] = [1, 2, 3, 4, 5]
print("Initial : ", array1)
var firstElement: Int = array1[0]
array1[0] = array1[array1.count - 1]
array1[array1.count - 1] = firstElement
print("Modified: ", array1)
print("\n\n")



/* ------------------------- ამოცანა 2 ------------------------- */
print("2) Array-ში ელემენტების წაშლა (ლუწი/კენტი ზომა)")
print("--------------------------------------------------")
var array2: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
print("Initial : ", array2)
if array2.count.isMultiple(of: 2) {
    for _ in 1...(array2.count / 2) {
        array2.removeLast()
    }
} else {
    for _ in 1...(array2.count / 2 + 1) {
        array2.removeLast()
    }
    
}
print("Modified: ", array2)
print("\n\n")



/* ------------------------- ამოცანა 3 ------------------------- */
print("3) Array-ს დაშლა ლუწ-კენტი ელემენტების Array-ებად")
print("--------------------------------------------------")
var array3: [Int] = []
for num in 1...10 {
    array3.append(num)
}
print("Initial : ", array3)
var evenArray3: [Int] = []
var oddArray3: [Int] = []
for num in array3 {
    if num.isMultiple(of: 2) {
        evenArray3.append(num)
    } else {
        oddArray3.append(num)
    }
}
print("Evens   : ", evenArray3)
print("Odds    : ", oddArray3)
print("\n\n")



/* ------------------------- ამოცანა 4 ------------------------- */
print("4) უდიდესი რიცხვი Double-ების Array-ში")
print("--------------------------------------------------")
let array4: [Double] = [77.6, 45.3, 94.51, 32.2, 5.26, 37.02]
print("Initial : ", array4)
var maximum: Double = array4[0]
for num in array4 {
    if num > maximum {
        maximum = num
    }
}
print("Maximum : ", maximum)
print("\n\n")



/* ------------------------- ამოცანა 5 ------------------------- */
print("5) შეერთებული Array-ის ზრდადობით დალაგება")
print("--------------------------------------------------")
let leftArray = [8, 4, 9, 9, 0, 2]
let rightArray = [1, 0, 9, 2, 3, 7, 0, 1]
print("Left  : ", leftArray)
print("Right : ", rightArray)
var mergedArray = leftArray + rightArray
print("Merged: ", mergedArray)
for idx1 in 0..<(mergedArray.count - 1) {
    for idx2 in (idx1 + 1)...(mergedArray.count - 1) {
        if mergedArray[idx1] > mergedArray[idx2] {
            let temp = mergedArray[idx2]
            mergedArray[idx2] = mergedArray[idx1]
            mergedArray[idx1] = temp
        }
    }
}
print("Sorted: ", mergedArray)
print("\n\n")


/* ------------------------- ამოცანა 6 ------------------------- */
print("6) უნიკალური ასოები String-ში")
print("--------------------------------------------------")
let stringToCheck: String = "Anri"
var stringCharacters = Set<Character>()
for char in stringToCheck {
    stringCharacters.insert(char)
}
print("String:", stringToCheck)
if stringToCheck.count == stringCharacters.count {
    print("Result: All Characters Unique.")
} else {
    print("Result: Characters Not Unique.")
}
print("\n\n")



/* ------------------------- ამოცანა 7 ------------------------- */
print("7) მოქმედებები Set-ზე")
print("--------------------------------------------------")
let setA: Set = [1, 2, 3, 4, 5, 6, 7]
let setB: Set = [4, 5, 6, 7, 8, 9, 10]
print("setA   : ", setA)
print("setB   : ", setB)
print("Inter. : ", setA.intersection(setB))
print("Union  : ", setA.union(setB))
print("A - B  : ", setA.subtracting(setB))
print("B - A  : ", setB.subtracting(setA))
print("\n\n")



/* ------------------------- ამოცანა 8 ------------------------- */
print("8) სტრინგების Set-ებზე ქვესიმრავლეობის შემოწმება")
print("--------------------------------------------------")
let scienceFiction: Set = [
    "The Martian",
    "Frankenstein",
    "The Hitchhiker's Guide to the Galaxy"
]
let books: Set = [
    "Harry Potter",
    "The Martian",
    "The Great Gatsby",
    "Don Quixote",
    "Frankenstein",
    "The Alchemist",
    "The Lord of the Rings",
    "The Hitchhiker's Guide to the Galaxy",
    "A Song of Ice and Fire"
]
print("Books : ", books)
print("Sci-Fi: ", scienceFiction)
if scienceFiction.isSubset(of: books) {
    print("\nResult: is a Subset!")
} else {
    print("\nResult: Not a Subset!")
}
print("\n\n")



/* ------------------------- ამოცანა 9 ------------------------- */
print("9) Array-ში განსხვავებული ელემენტების შემოწმება")
print("--------------------------------------------------")
let integerArray: [Int] = [9, 13, -2, 29, 17, 41, 13]
var unique = Set<Int>()
for num in integerArray {
    unique.insert(num)
}
print("Integers:", integerArray)
if unique.count == integerArray.count {
    print("Result  : All Integers are Unique.")
} else {
    print("Result  : Integers are Not Unique.")
}
print("\n\n")



/* ------------------------- ამოცანა 10 ------------------------- */
print("10) ფილმების რეიტინგების Dictionary")
print("--------------------------------------------------")
let movieRatings = [
    "The Shawshank Redemption" : 9.3,
    "Harry Potter and the Goblet of Fire" : 7.7,
    "A Bronx Tale" : 7.8,
    "Eyes Wide Shut" : 7.5,
    "The Martian" : 8,
    "Avatar" : 7.9,
    "Oppenheimer" : 8.6,
    "Interstellar" : 8.7,
    "Inception" : 8.8,
    "The Imitation Game" : 8
]
for (movie, rating) in movieRatings {
    print(movie, " _ ", rating)
}
var ratingSum: Double = 0
for rating in movieRatings.values {
    ratingSum += rating
}
let averageRating = ratingSum / Double(movieRatings.count)
print("\nAverage Rating : ", averageRating)
