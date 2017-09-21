package main

import (
	"net/http"
	"runtime"
)

func main() {
	runtime.GOMAXPROCS(runtime.NumCPU())

	var n int = 10
	var url string = "http://google.com"
	
	done := make(chan string)
	
	for i := 0; i < n; i++ {
		go func() {
			http.Get(url)
			done <- url
		}()
	}

	
	for i := 0; i < n; i++ {
		select {
			case <- done:		
		}
	}
}

