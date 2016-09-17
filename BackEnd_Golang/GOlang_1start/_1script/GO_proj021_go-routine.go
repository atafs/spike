package main

import (
    "fmt"
    "time"
    "strconv"
)

//#######################################
//VAR global
var pizzaNum = 0
var pizzaName = ""

//#######################################
//FUNC
func makeDough(stringChan chan string) {
    pizzaNum++
    
    pizzaName = "Pizza #" + strconv.Itoa(pizzaNum)
    
    fmt.Println("Make Dough and Send for Sauce")
    
    stringChan <- pizzaName
    time.Sleep(time.Millisecond * 10)
}

//FUNC
func addSauce(stringChan chan string) {
    pizza := <- stringChan 
    
    pizzaName = "Pizza #" + strconv.Itoa(pizzaNum)
    
    fmt.Println("Add Sauce and send", pizza, "for the topics")
    
    stringChan <- pizzaName
    time.Sleep(time.Millisecond * 10)
}

//FUNC
func addToppings(stringChan chan string) {
    pizza := <- stringChan
        fmt.Println("Add Sauce and send", pizza, "for the topics")
        
    time.Sleep(time.Millisecond * 10)
}
   
//#######################################   
//MAIN
func main() {
    
    //#######################################
    //CHANNEL pass string values between all our go routines
    stringChan := make(chan string)
    
    for i := 0; i < 3; i++ {
        go makeDough(stringChan)
        go addSauce(stringChan)
        go addToppings(stringChan)
        time.Sleep(time.Millisecond * 5000)

    }
}