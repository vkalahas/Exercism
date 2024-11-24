// one way
pub fn is_leap_year(year: Int) -> Bool {
  case year {
    _ if year % 100 == 0 && year % 400 == 0 -> True
    _ if year % 100 == 0 && year % 400 != 0 -> False
    _ if year % 4 == 0 -> True
    _ -> False
  }
}

// another way
pub fn is_leap_year(year: Int) -> Bool {
  year % 400 == 0 || year % 4 == 0 && year % 100 != 0
}

// one more way
pub fn is_leap_year(year: Int) -> Bool {
  case year % 100 {
    0 -> year % 400 == 0
    _ -> year % 4 == 0
  }
}
