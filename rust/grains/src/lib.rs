const MIN: u32 = 1;
const MAX: u32 = 64;

pub fn square(s: u32) -> u64 {
    if s < MIN || s > MAX {
        panic!(format!("Square must be between {} and {}", MIN, MAX));
    }

    2u64.pow(s - 1)
}

pub fn total() -> u64 {
    (MIN..=MAX).map(|i| square(i)).sum()
}
