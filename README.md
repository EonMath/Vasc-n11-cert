# Exact certificates and Lean verification for the Vasc inequality at n = 11

This repository contains exact rational certificates, standalone
Python replay programs, and a self-contained Lean source project. The theorem is
`VascN11.vasc11_inequality` in `lean/Vasc11/Final.lean`: for every strictly positive
real eleven-tuple, the cyclic sum of `(x_i - x_{i+1})/(x_{i+1} + x_{i+2})` is
nonnegative (indices modulo eleven).

## Reproduce

Follow [reproduce.md](reproduce.md). Check file integrity first:

```sh
sha256sum --quiet -c SHA256SUMS
```

- `certificates/derivative/`: three exact JSON inputs and their replay program.
- `certificates/boundary/`: three exact JSON inputs and their replay program.
- `lean/`: tracked sources and configuration from commit
  `0955a5ea79b8d8840f9a91687ee96cbbd0109fbe`, including embedded certificate data.
- `package_manifest.json`: versions, original input hashes and preparation limits.
- `tools/check_package.py`: portable integrity, source-provenance and layout check.

The Python and Lean verification routes are independent runtime entry points:
Python reads the JSON certificates; Lean checks its embedded exact data and the
real-valued assembly. Neither needs a numerical optimizer to verify the result.
This is a verification package, not a reproduction of the numerical search that
originally found the certificates. The JSON-to-Lean conversion programs are not
included; source hashes and conversion manifests are included under
`lean/provenance/`.

## Trust and verification scope

Finite Lean computations use `native_decide`. This trusts Lean's native
compiler/evaluation mechanism in addition to the kernel and ordinary classical
axiom base. Do not describe this as kernel-reduction-only checking. The source
project records 1,215 native computation axioms plus three classical base axioms;
`lake env lean Audit.lean` prints the final theorem's actual dependencies after
building. No claim of a fresh clean build is made by this packaging step.

Python replay uses exact arithmetic through python-flint, independently rebuilds
target coefficients, and checks integer matrix congruences and strict diagonal
dominance. Its assertions must remain enabled. Python success alone is not a
formal proof of the real-variable assembly.

## Publication status

Repository: [EonMath/Vasc-n11-cert](https://github.com/EonMath/Vasc-n11-cert).
The Lean source commit recorded above identifies the upstream source snapshot;
it is not a commit identifier in this release repository. Use this repository's
Git history to identify the release revision. No DOI has been assigned here.

No project license has been selected; see [LICENSE_STATUS.md](LICENSE_STATUS.md).
Public availability does not itself grant a code or data license.
This snapshot records source identity, not an independently timestamped claim of
priority. The date of the mathematical result and the later Lean formalization
should be documented separately in the accompanying paper.

## Generation supplement

[Generation inventory](generation_inventory.md) documents the original producer
and converter stages. Three unchanged producer scripts and one original frame
are included under `generation/` for inspection; their data inputs are present,
but a fully pinned solver environment and end-to-end discovery/conversion
pipeline are not supplied. They were syntax checked, not executed.
