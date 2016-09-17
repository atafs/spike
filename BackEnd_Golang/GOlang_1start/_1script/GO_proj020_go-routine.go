package main

import (
    "fmt"
    "time"
)

//#######################################
//FUNC
func count(id int) {
    for i := 0; i < 10; i++ {
        fmt.Println(id, ":", i)

        //SLEEP
        time.Sleep(time.Millisecond * 1000)

    }
}

//MAIN
func main() {

    for i := 0; i < 10; i++ {
        //#######################################
        //GO ROUTINE
        fmt.Println("NEW CICLE OF GO ROUTINE")
        go count(i)
    }

    time.Sleep(time.Millisecond * 11000)
}
