pub fn build_proverb(list: &[&str]) -> String {
    if list.len() == 0 { return String::new() }

    let mut arr: Vec<String> = vec![];

    for i in 0..list.len()-1 {
        arr.push(format!("For want of a {} the {} was lost.", list[i], list[i+1]))
    }

    arr.push(format!("And all for the want of a {}.", list[0]));

    arr.join("\n")
}
