package main

//#######################################
//IMPORT
import (
  "fmt"
	"time"
)

//#######################################
//MAIN
func main() {

	//***********************************
    //VAR
	day := time.Now().Weekday()
	start := time.Now()

	//***********************************
	//SLEEP
	time.Sleep(time.Millisecond * 1234)


    //***********************************
    //PRINT
	fmt.Printf("Hello World Americo Tomas - %s (%d)\n", day, day)
	fmt.Println("Time Passed By = ", time.Since(start))
	fmt.Println("Time Passed By = ", time.Hour + time.Since(start))

	fmt.Println("Welcome to the playground!")
	fmt.Println("The time is", time.Now())
}
