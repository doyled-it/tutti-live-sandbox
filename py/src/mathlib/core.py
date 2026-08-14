"""Core arithmetic helpers."""


def add(a: int, b: int) -> int:
    """Return the sum of two integers."""
    return a + b


def is_prime(n: int) -> bool:
    """Return True iff n is prime."""
    if n < 2:
        return False
    if n < 4:
        return True
    if n % 2 == 0:
        return False
    return all(n % divisor != 0 for divisor in range(3, int(n**0.5) + 1, 2))
