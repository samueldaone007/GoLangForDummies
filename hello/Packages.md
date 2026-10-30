# Packages in Go

## What is a package?

Think of a Go package like a **toolbox** or a **library** (like in Python).

It's a collection of Go code that someone already wrote, so you don't have to write everything from scratch. You just "import" the package and use the tools inside it.

For example, instead of writing your own code to print text to the screen, you can use Go's built-in `fmt` package.

## My code: `packages.go`

Here's the program I wrote:

```go
package main

import "fmt"

import "rsc.io/quote"

func main() {
	fmt.Println(quote.Go())
}
```

Let's break it down, line by line:

### `package main`

Every Go file starts with a package declaration. `package main` tells Go: **this is a program that can be run**, not just a library for other programs to use.

### `import "fmt"`

`fmt` is part of Go's **standard library** — it comes installed with Go. It stands for "format" and has tools for printing text. `fmt.Println` prints a line of text to the screen.

### `import "rsc.io/quote"`

This is an **external package** — someone else wrote it and shared it online. It's not built into Go, so you have to download it first. The package has a function called `Go()` that returns a famous Go proverb.

### `func main()`

This is the **entry point** — where your program starts running when you execute it.

### `fmt.Println(quote.Go())`

This calls `quote.Go()` to get a Go proverb, then prints it with `fmt.Println`.

## How to set up a module

Before you can use external packages like `rsc.io/quote`, you need to initialize a **Go module**. A module is just a folder that keeps track of your project and its dependencies.

Run this once in your folder:

```bash
go mod init github.com/samueldaone007/GoLangForDummies/packages
```

This creates a `go.mod` file. Your `go.mod` looks like this:

```go
module github.com/samueldaone007/GoLangForDummies/packages

go 1.27.3

require rsc.io/quote v1.5.2
```

- `module` — the name of your project
- `go` — the Go version you're using
- `require` — the external packages your project needs

## How to download a package

To add an external package, run:

```bash
go get rsc.io/quote
```

Go downloads the package and adds it to your `go.mod` file automatically.

## How to run your program

```bash
go run packages.go
```

You should see a Go proverb printed in your terminal!

## Summary

| Thing | What it means |
|-------|---------------|
| Package | A toolbox of reusable Go code |
| `fmt` | Built-in package for printing text |
| `rsc.io/quote` | External package you downloaded |
| `go mod init` | Starts a new Go project/module |
| `go get` | Downloads an external package |
| `go run` | Runs your Go program |

Packages make Go easier because you can reuse code instead of writing everything yourself. You're off to a great start!
