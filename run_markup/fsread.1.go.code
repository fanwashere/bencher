package main

import (
	"fmt"
	"io/ioutil"
	"log"
)

func main() {
	dat, err := ioutil.ReadFile("./../../../programs/fsread/video.mp4")
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(len(dat))
}

