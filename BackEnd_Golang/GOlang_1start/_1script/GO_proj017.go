package main

import (
    "fmt"
    "os"
    "log"
    "io/ioutil"
)

//MAIN
func main() {

    //#######################################
    //FILE
    file, err := os.Create("samp.txt")

    //CATCH
    if err != nil {
        log.Fatal(err)
    }

    //WRITE
    file.WriteString("This is some random text")

    //FILE
    stream, err := ioutil.ReadFile("samp.txt")

    //CATCH
    if err != nil {
        log.Fatal(err)
    }

    //READ
    readString := string(stream)
    fmt.Println(readString)
    file.Close()
}
