pub fn raindrops(n: u32) -> String {
    let mut out = String::from("");

    if n % 3 == 0 {
        out.push_str("Pling")
    }

    if n % 5 == 0 {
        out.push_str("Plang")
    }

    if n % 7 == 0 {
        out.push_str("Plong")
    }

    if out.len() > 0 {
        out
    } else {
        n.to_string()
    }
}
