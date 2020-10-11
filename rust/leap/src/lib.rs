pub fn is_leap_year(year: u64) -> bool {
    // let divisible_by_400 = year % 400 == 0;
    // if divisible_by_400 {
    //   return true
    // }

    // let divisible_by_100 = year % 100 == 0;
    // if divisible_by_100 {
    //   return false
    // }

    // return year % 4 == 0

    // Refactor
    return year % 400 == 0 || (!(year % 100 == 0) && year % 4 == 0)
}
