pub fn factors(n: u64) -> Vec<u64> {
    let mut remain = n;
    let mut factors = vec![];

    while remain > 1 {
        for x in 2..=remain {
            if remain % x == 0 {
                factors.push(x);
                remain /= x;
                break;
            }
        }
    }

    factors
}
