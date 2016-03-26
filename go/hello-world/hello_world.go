package hello

import "fmt"

const testVersion = 2

func HelloWorld(a string) string {
  if a == "" {
    a = "World"
  }

  return fmt.Sprintf("Hello, %s!", a)
}
