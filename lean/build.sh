#!/usr/bin/env bash
# Bounded first build using only Bash and the pinned Lean/Lake toolchain.
set -euo pipefail
cd -- "$(dirname -- "$0")"
batch_size="${VASC_BUILD_BATCH_SIZE:-4}"
if ! [[ "$batch_size" =~ ^[1-9][0-9]*$ ]]; then
  echo "VASC_BUILD_BATCH_SIZE must be a positive integer" >&2
  exit 2
fi
export LEAN_NUM_THREADS="${LEAN_NUM_THREADS:-4}"
batch=()
flush_batch() {
  if (( ${#batch[@]} )); then
    lake build "${batch[@]}"
    batch=()
  fi
}
while IFS= read -r module || [[ -n "$module" ]]; do
  if [[ -z "$module" ]]; then
    flush_batch
  else
    batch+=("+$module")
    if (( ${#batch[@]} >= batch_size )); then flush_batch; fi
  fi
done < build-order.txt
flush_batch
lake build
