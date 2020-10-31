pub fn is_armstrong_number(num: u32) -> bool {
    let num_str = num.to_string();
    let power: u32 = num_str.len() as u32;
    let digits = to_digits(num_str);

    num == digits.iter().map(|d| d.pow(power)).sum()
}

fn to_digits(num_str: String) -> Vec<u32> {
    num_str.chars()
        .map(|c| c.to_digit(10).unwrap())
        .collect::<Vec<u32>>()
}
