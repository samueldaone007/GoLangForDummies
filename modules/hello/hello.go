package main

import (
	"fmt"

	"github.com/samueldaone007/GoLangForDummies/greetings"
)

func main(){
	message := greetings.Hello("Samuel")
	fmt.Println(message)
}