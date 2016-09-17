package main

import "fmt"

//MAIN
func main() {
    
    //#######################################
    //VAR MAP
    presAge := make(map[string] int)
    presAge["AmericoTomas"] = 42
    presAge["AnaBatalha"] = 43
    presAge["ToDelete"] = 44

    //#######################################
    //PRINT
    fmt.Println(presAge["AmericoTomas"])
    fmt.Println(len(presAge))
    
    //DELETE
    delete(presAge, "ToDelete")
    fmt.Println(len(presAge))
    
}
