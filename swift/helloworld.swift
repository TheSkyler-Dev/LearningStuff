print("Hewwo, world!")
//this is a swift program already!
var num = 5 //that's an integer!
var num2: Double = 5.0 //that's a double! (the type doesn't have to be specified)
var num3 = 5.0 //type Double is inferred here
let pi = 3.14159 //that's a constant! (it can't be changed)

pi = 3.14 //oops! that's a constant! You cannot change it!
let label = "The width is "
let width = 94 //let's convert that to a string!
let widthLabel = label + String(width) //here we go!
print(widthLabel) //no semicolons needed by the way!

//let us commence calculation within strings
let calc = "The result of width times pi i \(Double(width) * pi)"
print(calc)
let quote = """
HEWWO; I'M A SILLY DEER-FOX!
I WILL NOM YOUR COOKIES!

(double quotes can appear without bein escaped)

Oops!, some Lolcode slipped in here:
HAI 1.2
CAN HAS STDIO?
VISIBLE "Hewwo, world!"
KTHXBYE
"""
print(quote)

var shoppingList = ["catfish", "water", "tulips", "blue paint"] //oops! An array!
shoppingList[1] = "bottle of water" //let's fix that
print(shoppingList)

var occupations = [
    "Malcolm": "Captain",
    "Gbonjubola Adeosun": "Mekanik"
]
occupations["Jayne"] = "Public Relations" //let's add Jayne
print(occupations)

var empty = []
var noDict = [:] //empty array and dictionary

//controlling the flow
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore) //bwoah.
//let's continue on Mac...