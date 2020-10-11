pub fn reverse(input: &str) -> String {
    let mut output = "".to_string();

    for i in input.chars().rev() {
        output.push(i);
    }

    return output;
}
