// Package mathlib is a tiny math library for the Tutti polyglot sandbox.
package mathlib

// Add returns the sum of two integers.
func Add(a, b int) int {
	return a + b
}

// Reverse returns s with its Unicode code points in reverse order.
func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
