package main

import "fmt"

//MAIN
func main() {

    //#######################################
    //PRINT
    demPanic()

}

//#######################################
//FUNC handle exception errors with a message
func demPanic() {

    //CATCH ERROS
    defer func() {
        fmt.Println(recover())
    }()

    //PANIC
    panic("PANIC")
}
