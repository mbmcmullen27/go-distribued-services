# go-distribued-services

## Chapter 1: Build a JSON over HTTP Server
- projects/proglog/internal/server/log.go
  - golang does not have Classes, but types, type pointers, and interfaces have method sets you add to using the function receiver syntax  
  ```go
  type Log struct{
    // ...
  }

  func (c *Log) Append(arg Argument) (ReturnType, error) {
    // ...
  }
  ```
  - the Append function declaration takes a Log pointer named c as the receiver and gets added to the Log pointer method set

- (7) When building a JSON/HTTP Go server, each handler cnosists of three steps:
  1. Unmarshal the request's JSON body into a struct.
  1. Run that endpoint's logic with the request to obtain a result.
  1. Marshal and write that result to the respone.
  If your handlers become much more complicated than this, then you should move the code out, move request and response handling into HTTP middleware, and move business logic further down the stack.  
  <br />
  - **note:** what do you call this type of design violation? you should apply the same philosophy to stored procedures