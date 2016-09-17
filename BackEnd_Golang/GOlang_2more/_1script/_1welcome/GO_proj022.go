package main

import (
    "fmt"
)

//MAIN
func main() {

    //#######################################
    //PRINT
    fmt.Printf("Hello World Americo Tomas - %s\n", "Ana Batalha")
	  fmt.Printf("Hello World Americo Tomas - %s\n", new(World))    
}

//#######################################
//TYPE
type World struct{}

//FUNC
func (w *World) String() string {
	return "Agrela Nascimento"
}
