package main

import (
	"fmt"
)

func main() {
	// Print “Hello, World!” to console
	fmt.Println("Hello, Cumsoft!")
}
// Please Remove Section Below to run Program. 
// Please Reference https://pkg.go.dev/net/http#Transport & https://www.socketloop.com/references/golang-net-http-transport-type-examples


  // Method One
  t := &http.Transport{}
  t.RegisterProtocol("file", http.NewFileTransport(http.Dir("/")))
  c := &http.Client{Transport: t}
  res, err := c.Get("file:///etc/passwd")

// Method Two
var httpClient = &http.Client{Transport: &transport{
     t: http.Transport{
         Dial: timeoutDial,
         ResponseHeaderTimeout: *requestTimeout / 2,
     }}}
