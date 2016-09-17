package main

//#######################################
//IMPORT
import (
    "fmt"
)

//#######################################
//TYPE
type Office int

//#######################################
//FUNC
func (o *Office) String() string {
	return "Google, " + officePlace[0]
}

//#######################################
//CONSTANT
const (
	Boston = "iota"
	NewYork = 10
)

//#######################################
//VAR global
var officePlace = [5] string {"London","NewYork","Agrela","Ana","Batalha"}

//#######################################
//MAIN
func main() {

    //***********************************
    //PRINT
	fmt.Printf("Hello World Americo Tomas - %s\n", officePlace[0])
  fmt.Printf("Hello World Americo Tomas - %s\n", new(Office))

	fmt.Println("Hello World Americo Tomas - ", officePlace[0])
  fmt.Println("Hello World Americo Tomas - ", Boston)
  fmt.Println("Hello World Americo Tomas - ", NewYork)

}
