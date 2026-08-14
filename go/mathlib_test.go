package mathlib

import "testing"

func TestAdd(t *testing.T) {
	if got := Add(2, 3); got != 5 {
		t.Errorf("Add(2, 3) = %d, want 5", got)
	}
}

func TestReverse(t *testing.T) {
	cases := []struct {
		name string
		in   string
		want string
	}{
		{name: "ascii", in: "hello", want: "olleh"},
		{name: "empty", in: "", want: ""},
		{name: "accented", in: "café", want: "éfac"},
		{name: "cjk", in: "日本語", want: "語本日"},
		{name: "emoji", in: "a😀b", want: "b😀a"},
	}

	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			if got := Reverse(tc.in); got != tc.want {
				t.Errorf("Reverse(%q) = %q, want %q", tc.in, got, tc.want)
			}
		})
	}
}
