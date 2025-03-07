fun main() {
    println("Hi, Kotlin!")
    val myVar = "Skyler"
    prinln("Hi, " + myVar)

    var upperCaseString = {text: String -> text.uppercase()}
    println(upperCaseString("hewwo"))
}