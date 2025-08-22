import UIKit
/*
 Joined
 used to combine all elements of a string array into a single string, placing a custome separator between each elements
 */

let students = ["Ed", "Vonda", "Eduardo", "Tom", "Alexis", "Andrew"]
print(students)

print(students.joined(separator: "-"))
print(students.joined(separator: " || "))
print(students.joined(separator: ", "))
