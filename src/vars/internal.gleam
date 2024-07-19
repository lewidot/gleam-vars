//// Internal module for vars program with functions exportable for testing

/// Interal public function to format strings as a key=value
pub fn format_pair(name: String, value: String) -> String {
  // <> concatenates two strings
  name <> "=" <> value
}
