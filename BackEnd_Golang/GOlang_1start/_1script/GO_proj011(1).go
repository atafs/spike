package main

import "fmt"

//MAIN
func main() {

    //#######################################
    //PRINT using defer (leaves to last this print after the main is closed)
    defer printTwo()
    printOne()

    fmt.Println(safeDiv(3,0))
    fmt.Println(safeDiv(3,1))
}

//#######################################
//FUNC
func printOne() {fmt.Println(1)}
func printTwo() {fmt.Println(2)}

func safeDiv(num1, num2 int) int {
    //FUNC DEFER will catch an error if it occurs
    defer func() {
        fmt.Println(recover())
    }()

    solution := num1 / num2
    return solution
}
