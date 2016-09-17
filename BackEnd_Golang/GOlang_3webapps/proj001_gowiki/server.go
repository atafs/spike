package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
)

//data structure
type Page struct {
    Title string
    Body  []byte
}

//create a simple file page
func (p *Page) save() error {
    filename := p.Title + ".txt"
    return ioutil.WriteFile(filename, p.Body, 0600)
}

func loadPage(title string) (*Page, error) {
    filename := title + ".txt"
    body, err := ioutil.ReadFile(filename)
    if err != nil {
        return nil, err
    }
    return &Page{Title: title, Body: body}, nil
}

//create a simple web server
func viewHandler(w http.ResponseWriter, r *http.Request) {
		//get name from url to open the file
		title := r.URL.Path[len("/view/"):]
		//add the name to the folder location
		page := "page/" + title
		p, _ := loadPage(page)
    fmt.Fprintf(w, "<h1>'%s'.txt</h1><div>%s</div>", p.Title, p.Body)
}

func main() {
		//create a simple web server
		fmt.Println("running the server at localhost:8080...")
		http.HandleFunc("/view/", viewHandler)

	 	http.ListenAndServe(":8080", nil)


}
