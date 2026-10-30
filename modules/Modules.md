# modules

This folder holds small Go modules I'm building while learning how Go packages and modules work together.

## What's inside

- `greetings/` — a simple Go package with a `Hello(name)` function that returns a welcome message
- `hello/` — a main program that imports the greetings package and prints a message

Think of it like this:

- `greetings` is a **toolbox** — it has a tool (`Hello`) that makes a welcome message
- `hello` is the **worker** — it grabs that tool, uses it, and prints the result

## How it works

### `greetings/greetings.go`

This file defines the `Hello` function:

```go
package greetings

import "fmt"

func Hello(name string) string {
	message := fmt.Sprintf("Hi, %v. Welcome!", name)
	return message
}
```

It takes your name as input and returns a message like `"Hi, Samuel. Welcome!"`.

### `hello/hello.go`

This is the main program that uses the greetings package:

```go
package main

import (
	"fmt"

	"github.com/samueldaone007/GoLangForDummies/greetings"
)

func main() {
	message := greetings.Hello("Samuel")
	fmt.Println(message)
}
```

It imports the `greetings` package, calls `Hello("Samuel")`, and prints the message to the screen.

## How to run

From the `modules` folder:

```bash
cd hello
go run .
```

You should see:

```
Hi, Samuel. Welcome!
```

## Summary

| Thing | What it means |
|-------|---------------|
| `greetings/` | A Go package — reusable code |
| `hello/` | A main program — code that runs |
| `import` | Brings in another package to use |
| `go run .` | Runs your Go program |

---

You're off to a great start! Keep going.

*Beginner-friendly. Corrections welcome!*