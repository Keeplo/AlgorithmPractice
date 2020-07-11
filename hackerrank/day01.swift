var i = 4
var d = 4.0
var s = "HackerRank "
// Declare second integer, double, and String variables.

// Read and save an integer, double, and String to your variables.
let inputInteger
let inputDouble
let inputString

inputInteger = readline()
inputDouble = readline()
inputString = readline()

if let a : Int = inputInteger {
    i += a;
}
if let b : Double = inputDouble {
    d += b;
}
if let c : String = inputString {
    s += c;
}
// Print the sum of both integer variables on a new line.
print(i)
// Print the sum of the double variables on a new line.
print(d)
// Concatenate and print the String variables on a new line
// The 's' variable above should be printed first.
print(s)