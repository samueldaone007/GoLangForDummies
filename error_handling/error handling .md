# error_handling

Hi! I'm **samueldaone007** and I'm learning Go (Golang).

This folder shows how Go handles errors — when something goes wrong, Go lets you know so you can deal with it instead of crashing silently.

## What's inside

- `greetings/` — a Go package where `Hello(name)` returns a message **and** an error
- `hello/` — a main program that calls `Hello` and checks if an error happened

Think of it like this:

- `greetings` is a **careful worker** — it says "here's your message, but also, here's what might be wrong"
- `hello` is the **manager** — it checks if something went wrong before using the message

## How it works

### `greetings/greetings.go`

This file defines `Hello`. Notice it returns **two** things: a string and an error.

```go
package greetings

import (
	"errors"
	"fmt"
)

func Hello(name string) (string, error) {
	if name == "" {
		return "", errors.New("empty name")
	}
	message := fmt.Sprintf("Hello, %v, welcome!", name)

	return message, nil
}
```

- If `name` is empty, it returns `""` and an error: `"empty name"`
- Otherwise, it returns the welcome message and `nil` (meaning "no error")

### `hello/hello.go`

This is the main program. It calls `Hello` and checks the error:

```go
package main

import (
	"fmt"
	"log"

	"example.com/greetings"
)

func main(){
	log.SetPrefix("greetings: ")
	log.SetFlags(0)
	
	message, err := greetings.Hello("")

	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(message)
}
```

- `greetings.Hello("")` is called with an empty name, so it triggers the error
- `if err != nil` checks: "did something go wrong?"
- `log.Fatal(err)` prints the error and stops the program

In short: Go doesn't use `try/catch`. Instead, functions return an error, and you check it with `if err != nil`.

## How to run

From the `error_handling` folder:

```bash
cd hello
go run .
```

You should see an error message like:

```
greetings: empty name
```

## Summary

| Thing | What it means |
|-------|---------------|
| `(string, error)` | A function that returns a result and possibly an error |
| `errors.New(...)` | Creates a new error |
| `nil` | Means "no error" — everything is fine |
| `if err != nil` | Checks if something went wrong |
| `log.Fatal(err)` | Prints the error and stops the program |

---

Go makes error handling explicit, you can't ignore it. That's a good thing!

*Beginner-friendly. Corrections welcome!*