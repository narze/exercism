pub fn nth(n: u32) -> u32 {
    let mut count: u32 = 2;
    let mut nth: u32 = 0;

    let result = loop {
        if is_prime(count) {
            if nth == n {
                break count
            }
            nth = nth + 1;
        }
        count = count + 1;
    };

    return result;
}

fn is_prime(n: u32) -> bool {
    for factor in 2..(n - 1) {
        if n % factor == 0 {
            return false;
        }
    }

    return true;
}
