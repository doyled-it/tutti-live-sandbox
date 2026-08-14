import { expect, test } from "bun:test";
import { add, slugify } from "./index";

test("add", () => {
  expect(add(2, 3)).toBe(5);
});

test("slugify collapses spaces", () => {
  expect(slugify("Hello World")).toBe("hello-world");
});

test("slugify collapses punctuation runs", () => {
  expect(slugify("foo!!bar??baz")).toBe("foo-bar-baz");
});

test("slugify lowercases mixed case", () => {
  expect(slugify("MiXeD CaSe")).toBe("mixed-case");
});

test("slugify strips leading and trailing separators", () => {
  expect(slugify("  --Hello World--  ")).toBe("hello-world");
});
