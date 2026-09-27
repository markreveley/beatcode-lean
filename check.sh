#!/usr/bin/env bash
# Kernel check for every unit. Needs a Lean 4.34.x toolchain (set LEAN_BIN or have lean on PATH).
# Prints, per unit file: exit code, wall time, and the #print axioms lines — the trust marker.
# A unit labelled "proved" must show only [propext, Classical.choice, Quot.sound] or fewer.
set -euo pipefail
cd "$(dirname "$0")"
LEAN_BIN="${LEAN_BIN:-$(dirname "$(command -v lean)")}"
"$LEAN_BIN/lean" --version
for f in units/*/*.lean; do
  s=$(date +%s.%N); out=$(timeout 600 "$LEAN_BIN/lean" "$f" 2>&1) && ec=0 || ec=$?
  printf '%s  exit=%s  %.1fs\n' "$f" "$ec" "$(echo "$(date +%s.%N) - $s" | bc)"
  printf '%s\n' "$out" | sed 's/^/    /'
  printf '    sha256 %s\n' "$(sha256sum "$f" | cut -c1-64)"
done
