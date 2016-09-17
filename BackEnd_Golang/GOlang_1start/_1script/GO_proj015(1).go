package main

import "fmt"
import "math"

//MAIN
func main() {

    //#######################################
    //VAR
    rect := Rectangle{20,50}
    circ := Circle{4}

    //#######################################
    //PRINT
    fmt.Println("RECTANGLE AREA = ", getArea(rect))
    fmt.Println("CIRCLE AREA = ", getArea(circ))

}

//#######################################
//INTERFACE using Polimorphism
type Shape interface {
    area() float64
}

//#######################################
//STRUCT
type Rectangle struct {
    //ATTRIBUTES
    height float64
    width float64
}

//STRUCT
type Circle struct {
    //ATTRIBUTES
    radius float64
}

//#######################################
//FUNC
func (r Rectangle) area() float64 {
    return r.height * r.width
}

//FUNC
func (c Circle) area() float64 {
    return math.Pi * math.Pow(c.radius, 2)
}

//FUNC
func getArea(shape Shape) float64 {
    return shape.area()
}
