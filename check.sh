#!/usr/bin/env bash
# Kernel check for every unit. Needs a Lean 4.34.x toolchain (set LEAN_BIN or have lean on PATH).
# Prints, per unit file: exit code, wall time, the #print axioms lines (the assumption list), and the file's sha256.
# Stops at the first Lean failure and returns its exit code.
# A level-4 unit must show only [propext, Classical.choice, Quot.sound] or fewer (README.md, Checker I3-I8).
set -euo pipefail
cd "$(dirname "$0")"
LEAN_BIN="${LEAN_BIN:-$(dirname "$(command -v lean)")}"
"$LEAN_BIN/lean" --version
for f in units/*/*.lean; do
  s=$(date +%s.%N); out=$(timeout 600 "$LEAN_BIN/lean" "$f" 2>&1) && ec=0 || ec=$?
  printf '%s  exit=%s  %.1fs\n' "$f" "$ec" "$(echo "$(date +%s.%N) - $s" | bc)"
  printf '%s\n' "$out" | sed 's/^/    /'
  printf '    sha256 %s\n' "$(sha256sum "$f" | cut -c1-64)"
  if [ "$ec" -ne 0 ]; then
    exit "$ec"
  fi
done
