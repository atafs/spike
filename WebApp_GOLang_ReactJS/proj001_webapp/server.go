package main

import (
	"log"
	"net/http"
)

func main() {
		//create a simple web server
		fs := http.FileServer(http.Dir("static"))
	  http.Handle("/", fs)

	  log.Println("running the server at localhost:3002...")
	  http.ListenAndServe(":3002", nil)
}
