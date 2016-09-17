package main

import "fmt"

//MAIN
func main() {

    //#######################################
    //VAR CONSTANT
    const pi float64 = 3.14159265

    //VAR OTHER SINTAXE
    var(
        varA = 2
        varB = 3
    )

    //VAR STRING
    var myName string = "Americo Tomas"
    var myNameLength int = len(myName)

    //VAR BOOLEAN
    var isOver40 bool = true

    //#######################################
    //PRINT
    fmt.Println(pi)
    fmt.Println(varA,varB)
    fmt.Println(myName)
    fmt.Println(myNameLength)

    //PRINT CONCATENATION
    fmt.Println(myName, " is my name and ", myNameLength, " is the length of my name")
    fmt.Println("Over 40 variable = ", isOver40,)


    //PRINT USING PRINTF
    fmt.Printf("%.3f \n", pi)
    fmt.Printf("DATA TYPE: %T \n", pi)
    fmt.Printf("BOOLEAN: %t \n", pi)
    fmt.Printf("%d \n", 100)
    fmt.Printf("%b \n", 100)
    fmt.Printf("%c \n", 100)
    fmt.Printf("%x \n", 100)
    fmt.Printf("%e \n", pi)









}
