package main

import "fmt"

//MAIN
func main() {

    //#######################################
    //VAR to show the use of pointers
    x := 0
    changeXVal(x)

    y := 0
    changeYValNow(&y)

    z := new(int)
    changeZValNow(z)

    //#####################################
    //PRINT
    fmt.Println("NOT using POINTER: X = ", x)

    fmt.Println("USING POINTER: Y = ", y)
    fmt.Println("GETTING MEMORY ADDRESS: Y = ", &y)

    fmt.Println("USING POINTER: Z = ", *z)
}

//#######################################
//FUNC that is not using pointers
func changeXVal(x int) {
    x = 2
}

//FUNC that USING pointers
func changeYValNow(y *int) {
    *y = 2
}

//FUNC that USING pointers
func changeZValNow(z *int) {
    *z = 100
}
