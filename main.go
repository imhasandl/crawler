package main

import (
	"fmt"
	"os"
)

func main(){
	if len(os.Args) < 2 {
		fmt.Println("no website provided")
		os.Exit(1)
	}
	if len(os.Args) > 2 {
		fmt.Println("too many arguments provided")
		os.Exit(1)
	}
	rawBaseURL := os.Args[1]

	fmt.Printf("starting crawl of: %s...\n", rawBaseURL)

	htmlBody, err := getHTML(rawBaseURL)
	if err != nil {
		fmt.Println(err)
	}

	fmt.Println(htmlBody)
}


// go run .
// Expecting exit code: 1
// Expecting stdout to contain all of:
// no website provided


// go run . "https://website1.com" "website2.com"
// Expecting exit code: 1
// Expecting stdout to contain all of:
// too many arguments provided


// go run . "https://website2.com"
// Expecting exit code: 0
// Expecting stdout to contain all of:
// starting crawl
// https://website2.com