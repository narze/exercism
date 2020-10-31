pub fn is_armstrong_number(num: u32) -> bool {
    let digits = to_digits(num);
    let power: u32 = num.to_string().len() as u32;

    num == digits.iter().map(|d| d.pow(power)).sum::<u32>()
}

fn to_digits(num: u32) -> Vec<u32> {
    num.to_string()
        .chars()
        .map(|c| c.to_digit(10).unwrap())
        .collect::<Vec<u32>>()
}
