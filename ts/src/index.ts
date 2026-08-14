/** Return the sum of two integers. */
export function add(a: number, b: number): number {
  return a + b;
}

/** Convert a string into a lowercase, hyphen-separated slug. */
export function slugify(s: string): string {
  return s
    .trim()
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, "-")
    .replace(/^-+|-+$/g, "");
}
