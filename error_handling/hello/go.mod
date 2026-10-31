module github.com/samueldaone007/GoLangForDummies/hello

go 1.27.3

replace github.com/samueldaone007/GoLangForDummies/greetings => ../greetings

require example.com/greetings v0.0.0-00010101000000-000000000000

replace example.com/greetings => ../greetings
