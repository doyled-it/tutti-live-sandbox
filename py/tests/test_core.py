from mathlib import add, is_prime


def test_add() -> None:
    assert add(2, 3) == 5


def test_is_prime_zero() -> None:
    assert is_prime(0) is False


def test_is_prime_one() -> None:
    assert is_prime(1) is False


def test_is_prime_two() -> None:
    assert is_prime(2) is True


def test_is_prime_small_primes() -> None:
    assert is_prime(3) is True
    assert is_prime(7) is True
    assert is_prime(13) is True


def test_is_prime_small_non_primes() -> None:
    assert is_prime(4) is False
    assert is_prime(9) is False
    assert is_prime(15) is False


def test_is_prime_larger_prime() -> None:
    assert is_prime(97) is True
