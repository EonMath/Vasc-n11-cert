# Reproduction instructions

Obtain the release repository:

```sh
git clone https://github.com/EonMath/Vasc-n11-cert.git
cd Vasc-n11-cert
```

Record `git rev-parse HEAD` to identify the release revision. The separate
`lean_source_commit` in `package_manifest.json` identifies the original Lean
source snapshot and remains `0955a5ea79b8d8840f9a91687ee96cbbd0109fbe`.

Run commands from the repository root unless a command explicitly changes the
working directory. Linux x86-64 is the tested replay platform. You need Git,
Bash, SHA256 utilities, CPython, and (for Lean) elan and a C toolchain. Initial
dependency downloads require network access. Dependencies are not vendored.

## Integrity and lightweight smoke check

```sh
sha256sum --quiet -c SHA256SUMS
python3 tools/check_package.py
```

The smoke check verifies packaged bytes and the six original certificate hashes
recorded by Lean. It does not prove the theorem or rerun polynomial checks.

## Exact Python replay

The previously tested environment is CPython 3.14.2 and python-flint 0.9.0. With
that Python installed:

```sh
python3.14 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python -I certificates/derivative/replay.py
.venv/bin/python -I certificates/boundary/replay_boundary.py
```

Do not use `-O` or `-OO`; assertions perform the checks. Each script writes a
fresh JSON report beside itself. These generated reports are intentionally not
manifest entries. The scripts are byte-identical to the original standalone
replayers. They use Linux CPU affinity and Unix resource limits, so Windows and
macOS support is not claimed. Run sequentially on a shared machine. The scripts
cap address space at 2 GiB and 3 GiB respectively and restrict each process to
one allowed CPU. They have no built-in wall-clock timeout; an externally imposed
timeout or allocation failure is an incomplete run, not a mathematical failure.

Expected derivative report: 6,069 coefficient orbits, 248,264 Gram coordinates,
93 positive-definite blocks and 5,975 strict diagonal-dominance inequalities.
Expected boundary report: 34,304 coefficient equations, 1,235,364 Gram
coordinates, 513 positive-definite matrices, 34,314 strict inequalities,
55 positive multiplier weights and exact normalization.

## Lean build and axiom audit

The toolchain is pinned by `lean/lean-toolchain` to Lean 4.29.0; the exact Mathlib
revision is `8a178386ffc0f5fef0b77738bb5449d50efeea95`. The committed
`lake-manifest.json` pins all transitive packages. Keep it unchanged.

After installing elan:

```sh
cd lean
lake exe cache get
VASC_BUILD_BATCH_SIZE=1 LEAN_NUM_THREADS=1 ./build.sh
lake build
lake env lean Audit.lean
```

The serial first-build setting minimizes competing large certificate jobs.
`build.sh` reads the included topological `build-order.txt`; after the first
build, `lake build` is the incremental entry point. Native checks may need
several GiB each and several minutes for large aggregates. The full source
project is about 104 MiB; dependencies and build products need many GiB more.
No clean-build timing or peak-memory guarantee has been measured for this
export. Reserve sufficient local disk and memory before starting; do not infer
proof failure from resource exhaustion.

The Python programs, JSON files and converters are not Lean build dependencies.
The formalization embeds its data directly. `Audit.lean` prints the transitive
axiom set; inspect it for `sorryAx` and unexpected axioms as well as the expected
native-computation dependencies. The supplied `lean/README.md` explains the
module layout and trust boundary.

## Limits of this delivery

Packaging exports the recorded Git commit, not uncommitted working-tree files.
It excludes `.git`, `.lake`, compiled objects, private proof-workflow records,
and third-party papers. It preserves tracked Lean provenance and any notices
already in those files. It does not reproduce the search or regenerate Lean
sources from JSON. A fresh build in this exported directory has not been run
during package preparation; neither dependency-download portability nor full
clean-build resources have therefore been established here. Before an archival
release, perform that clean build and save environment versions and logs.
