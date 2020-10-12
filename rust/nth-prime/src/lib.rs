pub fn nth(n: u32) -> u32 {
    let mut count: u32 = 2;
    let mut nth: u32 = 0;

    let result = loop {
        if is_prime(count) {
            if nth == n {
                break count
            }
            nth += 1;
        }
        count += 1;
    };

    return result;
}

fn is_prime(n: u32) -> bool {
    let sqr_plus_one: u32 = (n as f32).sqrt() as u32 + 1;

    for i in 2..sqr_plus_one {
        if n % i == 0 {
            return false;
        }
    }

    return true;
}
