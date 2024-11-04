Golang CLI application that generates an "internal links" report for any website on the internet by crawling each page of the site


# Usage 
$go build -o crawler

./crawler URL maxConcurrency maxPages

./crawler "https://example.com" 3 10






# Using $go run . maxConcurrency maxPages

$go build and ./crawler can also be replaced with go run . from your main package directory.

$go run . "https://example.com" 3 10
