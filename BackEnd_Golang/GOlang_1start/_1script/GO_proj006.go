package main

import "fmt"

//MAIN
func main() {
    
    //#######################################
    //VAR CONSTANT
    var favNums2[5] float64 
    favNum3 := [5] float64 {1,2,3,4,5}

    //#######################################
    //ARRAY
    favNums2[0] = 111.2
    favNums2[1] = 222
    favNums2[2] = 333
    favNums2[3] = 444.547
    favNums2[4] = 555.47
    
    //#######################################
    //PRINT
    fmt.Println(favNums2[3])
    fmt.Println(favNums2[4])

    //PRINT ARRAY
    for i, value := range favNum3 {
        fmt.Println(value, i)
    }
    
     for _, value := range favNum3 {
        fmt.Println(value)
    }
    
    
}