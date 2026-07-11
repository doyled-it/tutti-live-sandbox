#!/bin/bash
set -euo pipefail

# Test: FAREWELL.md exists at repo root with correct content
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FAREWELL_FILE="$REPO_ROOT/FAREWELL.md"
EXPECTED_CONTENT="Goodbye from Tutti."

# Check if file exists
if [ ! -f "$FAREWELL_FILE" ]; then
  echo "FAIL: FAREWELL.md does not exist at repo root"
  exit 1
fi

# Check if content matches
ACTUAL_CONTENT="$(cat "$FAREWELL_FILE")"
if [ "$ACTUAL_CONTENT" != "$EXPECTED_CONTENT" ]; then
  echo "FAIL: FAREWELL.md content does not match"
  echo "Expected: '$EXPECTED_CONTENT'"
  echo "Actual:   '$ACTUAL_CONTENT'"
  exit 1
fi

echo "PASS: FAREWELL.md exists with correct content"
