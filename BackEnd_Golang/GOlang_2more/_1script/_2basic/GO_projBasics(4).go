package main

import "fmt"

func add(x int, y int) int {
	return x + y
}

func main() {
	//VAR
	var num1, num2 int = 42, 43
	sum := add(num1, num2)
	
	//PRINT
	fmt.Println(add(num1, num2))
	fmt.Println(sum)
	fmt.Println("The SUM of", num1, " + ", num2, " is ", sum)
}
