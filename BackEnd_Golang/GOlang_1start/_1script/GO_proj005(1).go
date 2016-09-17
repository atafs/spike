package main

import "fmt"

//MAIN
func main() {
    
    //#######################################
    //VAR CONSTANT
    i := 1
    yourAge := 18

    //#######################################
    //LOOP *********************************
    //print values from 0 to 10
    for i <= 10 {
        fmt.Println(i)
        i++
    }
    
    //print values from 0 to 4
    for j := 0; j < 5; j++ {
        fmt.Println(j)
    }
    
    //CONDITION1 ***************************
    if yourAge >= 16 {
        fmt.Println("You can Drive")
    } else {
        fmt.Println("You can NOT Drive")
    }
    
    //CONDITION2 ***************************
    if yourAge >= 16 {
        fmt.Println("You can DRIVE")
    } else if yourAge >= 18{
        fmt.Println("You can VOTE")
    } else {
        fmt.Println("You can have FUN")
    }
    
    //CONDITION3 ***************************
    switch yourAge {
        case 16: fmt.Println("You can DRIVE")
        case 18: fmt.Println("You can VOTE")
        default: fmt.Println("You can have FUN")

    }
    
    
}