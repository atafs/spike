package main

import (
    "fmt"
    "strings"
    "sort"
)
//MAIN
func main() {

    //#######################################
    //VAR
    sampString := "Hello World GOlang"

    csvString := "1,2,3,4,5,6"
    listOfLetters := []string{"c", "a", "b"}
    listOfNums := strings.Join([]string{"3", "2", "1"}, ", ")

    //#######################################
    //PRINT strings and functons available
    fmt.Println(strings.Contains(sampString, "lo"))
    fmt.Println(strings.Index(sampString, "lo"))
    fmt.Println(strings.Count(sampString, "l"))
    fmt.Println(strings.Replace(sampString, "l", "x", 3))

    fmt.Println(strings.Split(csvString, ","))

    sort.Strings(listOfLetters)
    fmt.Println(strings.Split(csvString, ","))
    fmt.Println("LETTERS =", listOfLetters)

    fmt.Println("LIST OF NUMBERS =", listOfNums)

}
