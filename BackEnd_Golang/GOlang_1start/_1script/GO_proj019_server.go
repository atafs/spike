package main

import (
    "fmt"
    "net/http"
)

//MAIN
func main() {

    //#######################################
    //HTTP WEB SERVER
    http.HandleFunc("/", handler)
    http.HandleFunc("/earth", handler2)

    //LISTENER
    http.ListenAndServe(":8080", nil)
}

//#######################################
//FUNC
func handler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello / GOlang handler\n")
}

func handler2(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello /earth GOlang handler2\n")
}
