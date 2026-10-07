# Generation inventory and reproduction boundary

The guaranteed entry points in reproduce.md verify the supplied exact data.
This supplement preserves selected original producer code and identifies the
missing steps needed to reproduce discovery and conversion. No solver or
converter was executed during preparation. The three copied Python scripts
passed syntax parsing only; they have not been validated in a new environment.
Exact source hashes and workspace-relative provenance are recorded in
`generation/source_inventory.json`.

## Included original producer code

| File | Purpose and closed data inputs | Software |
|---|---|---|
| `generation/derivative/scs_build.py` | Construct sparse SDP and run an initial 25-iteration pilot; reads supplied `multiplier_frame.json` | NumPy, SciPy, SCS |
| `generation/derivative/certify_psd.py` | Construct congruence witnesses for all 93 supplied rational Gram matrices; reads `multiplier_frame.json`, `rational_gram.json` | NumPy, SciPy, python-flint |
| `generation/boundary/certify_boundary_psd.py` | Construct 513 congruence witnesses from `p2_frame.json` and `boundary_rational_certificate.json` | NumPy, SciPy, python-flint |

The original `p2_frame.json` is included beside the boundary script (3,565,588
bytes). It is not byte-identical to the released `boundary_frame.json`; no silent
renaming or substitution was made. The scripts are byte-identical originals,
not edited reconstructions. They use paths relative to their own locations.

Run any generation experiment in a separate writable scratch directory. Copy
the chosen script and its listed JSON inputs into that same directory before
running it. For the boundary witness script, copy its included `p2_frame.json`,
not the differently named replay frame. For derivative inputs and the boundary
rational certificate, use the corresponding files under `certificates/`.
Do not run producers in certificate directories: producers overwrite outputs
with the same names as released data. The boundary producer selects the second
allowed CPU and therefore requires at least two CPUs in its affinity set.

python-flint is pinned to 0.9.0 for replay. Historical NumPy/SciPy/SCS versions
have not been established by this supplement, so a fully pinned numerical
producer environment is **not** claimed. BLAS/compiler/version differences may
change floating-point Cholesky witnesses or solver outputs. The subsequent exact
checks determine whether produced witnesses are valid. The derivative pilot
alone does not reproduce the final rational certificate.

## Omitted discovery stages

The original derivative workflow also has `multiplier_preflight.py`,
`scs_continue.py`, `correction_basis.py`, and `reconstruct.py` under
`lemmas/translation_multiplier_r79/generator/`. The preflight reads an earlier
`translation_signed_r73/generator/closure_frame.json`; reconstruction reads
`integer_C.npz`, `correction_basis.json`, and a selected `run2_vectors.npz`
(about 6 MB). The continuation invocation sequence and numerical environment
are not reconstructed here.

The original boundary workflow has `frame.py`, `flexible2_build.py`,
`spn_build.py`, `scs_continue.py`, and `reconstruct_spn.py` under
`lemmas/boundary_gram_r85/generator/`. It uses earlier sparse SDP arrays,
`flex2_multiplier.json`, selected warm-start vectors, and final
`spn_tight_vectors.npz` (about 30 MB). These intermediates exist in the original
workspace but are not part of this verification release. Including isolated
reconstruction scripts without those inputs would not establish an end-to-end
reproduction pipeline.

## Omitted JSON-to-Lean conversion stages

Original generators exist under
`scratch/f-generator/generate_derivative_data/` and
`scratch/f-generator/generate_boundary_data/`; integration and layout scripts
exist under `scratch/integrator/integrate_native/` and
`scratch/integrator/boundary_layout/`. The inventory records each Python source
path and hash without publishing private directory contents.

These scripts contain absolute historical paths, depend on intermediate Lean
sources and generated modules, and include successive prototype/typed/cache
stages. For example, derivative `generate_poly_cache.py` extracts a prefix from
an intermediate `StagedInterfaces.lean`, while boundary cache generation writes
into an existing intermediate `certified_blocks` layout. Later integration and
module-layout migration are additional steps. None is presented here as a
portable converter for the final committed Lean tree. Releasing such a converter
requires a separate dependency-closure and output-correspondence check.

The final Lean sources, their source hashes and conversion manifests are fully
included and build without Python converters. This package therefore supports
independent verification from exact data, with selected original producer code
for inspection, but does not claim full numerical search or Lean-source
regeneration from a single command.
