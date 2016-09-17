package main

import "fmt"

//MAIN
func main() {

    //#######################################
    //VAR
    rect1 := Rectangle{leftX:0, topY: 50, height: 10, width: 10}
    rect2 := Rectangle{0, 60, 20, 20}

    //######################################
    //PRINT
    fmt.Println("RECTANGLE is ", rect1.width, "wide")
    fmt.Println("AREA is ", rect1.area())

    fmt.Println("AREA is ", rect2.area())
}

//#######################################
//STRUCT it sort of an object (public access (capital letter))
type Rectangle struct {

    //ATTRIBUTES
    leftX float64
    topY float64
    height float64
    width float64
}

//#######################################
//FUNC
func (rect *Rectangle) area() float64 {
    return rect.width * rect.height
}
