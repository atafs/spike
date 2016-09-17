package main

import "fmt"

//MAIN
func main() {

    //#######################################
    //VAR
    listNums := []float64{1,2,3,4,5}
    
    num1, num2 := next2Values(5)

    //#######################################
    //PRINT
    fmt.Println("SUM :", addThemUp(listNums))
    fmt.Println(num1, num2)
    fmt.Println(subtractThem(1,2,3,4,5))
}

//#######################################
//FUNC
func addThemUp(numbers []float64) float64 {
    sum := 0.0

    //LOOP
    for _, val := range numbers {
        sum += val
    }
    return sum;
}

//FUNC that returns 2 values
func next2Values(number int) (int, int) {
    return number+1, number+2
}

//FUNC that subtracts multiple values in received in params
func subtractThem(args ...int) int {
    finalValue := 0

    for _, value := range args {
        finalValue -= value
    }
    return finalValue
}
