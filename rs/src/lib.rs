//! A tiny math library for the Tutti polyglot sandbox.

/// Return the sum of two integers.
pub fn add(a: i64, b: i64) -> i64 {
    a + b
}

/// Return the greatest common divisor of two integers using Euclid's algorithm.
pub fn gcd(a: u64, b: u64) -> u64 {
    let (mut a, mut b) = (a, b);
    while b != 0 {
        let t = b;
        b = a % b;
        a = t;
    }
    a
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn adds() {
        assert_eq!(add(2, 3), 5);
    }

    #[test]
    fn gcd_of_coprime_inputs() {
        assert_eq!(gcd(13, 17), 1);
    }

    #[test]
    fn gcd_of_inputs_with_common_factor() {
        assert_eq!(gcd(48, 18), 6);
    }

    #[test]
    fn gcd_with_zero() {
        assert_eq!(gcd(0, 5), 5);
        assert_eq!(gcd(5, 0), 5);
        assert_eq!(gcd(0, 0), 0);
    }
}
