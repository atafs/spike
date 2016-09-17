package main

import (
	"fmt"
	"time"
)

func main() {
	t := time.Now()
	switch {
	case t.Hour() < 12:
		fmt.Println(t.Hour() , " = Good morning!")
	case t.Hour() < 17:
		fmt.Println(t.Hour() , "= Good afternoon.")
	default:
		fmt.Println(t.Hour() , "= Good evening.")
	}
}
