import argv
import envoy
import gleam/io
import gleam/result
import vars/internal

pub fn main() {
  // pattern match on command line args
  case argv.load().arguments {
    // if first arg is "get" followed by a second argument
    ["get", name] -> get(name)
    // otherwise print usage doc to the user
    _ -> io.println("Usage: vars get <name>")
  }
}

/// Private function to print environment variables by name
fn get(name: String) -> Nil {
  let value = envoy.get(name) |> result.unwrap("")
  io.println(internal.format_pair(name, value))
}
