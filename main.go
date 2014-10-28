package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"
)

var teamName = flag.String("team", "brimstone", "Team name")
var listen = flag.String("listen", ":80", "Address and port for httpd")

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "<team>%s</team>", *teamName)
}

func main() {
	flag.Parse()
	http.HandleFunc("/", handler)
	log.Printf("Preparing to listening on %s for team %s", *listen, *teamName)
	err := http.ListenAndServe(*listen, nil)
	if err != nil {
		log.Fatal(err)
	}
}
