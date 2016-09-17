package main

import "fmt"

//MAIN
func main() {

    //#######################################
    //VAR
    num3 := 3

    //#######################################
    //FUNC anonymous function
    doubleNum := func() int {
        num3 *= 2
        return num3
    }

    //#######################################
    //PRINT
    fmt.Println(doubleNum())
    fmt.Println(doubleNum())
    fmt.Println(factorial(3))
}

//FUNC recursive function
func factorial(num int) int {
    if num == 0 {return 1}

    return num * factorial(num - 1)
}
