# VASC n=11 verification in Lean

Self-contained Lean sources and exact certificate data, pinned to Lean 4.29.0
and the Mathlib revision in `lake-manifest.json`. Neither building nor checking
requires Python, SCS, SymPy, or the original JSON certificate files.

## Build

Install the Lean toolchain manager `elan`, then from this directory:

```sh
lake exe cache get
./build.sh
lake build
```

`lake exe cache get` retrieves the pinned Mathlib build cache. `build.sh` invokes
only Bash and Lake, scheduling certificate modules in bounded topological
batches. After a successful first build, `lake build` is the normal incremental
entry point. A sufficiently provisioned machine may also use `lake build`
directly; the bounded script is recommended for the first build.

The default batch contains at most four selected module targets. Adjust with
`VASC_BUILD_BATCH_SIZE=16 ./build.sh` when RAM permits. Each large native check
can require several GiB; large aggregate checks can run for several minutes.
The project config sets `moreLeanArgs = ["--tstack=262144"]` for Lean's worker
stack, needed by the unchanged recursive sparse-polynomial normalizer.

## Verified theorem

Import `Vasc11` to use `VascN11.vasc11_inequality` in `Vasc11/Final.lean`:

```lean
theorem vasc11_inequality (x : Fin 11 → ℝ) (hx : ∀ i, 0 < x i) :
    0 ≤ c11 x
```

Here `c11 x` is the cyclic sum of `(xᵢ − xᵢ₊₁)/(xᵢ₊₁ + xᵢ₊₂)`,
with indices modulo eleven. The only hypothesis is strict positivity of every
coordinate: no certificate, derivative, or boundary assumptions remain.

## Proof components

`Vasc11/Assembly.lean` proves `VascN11.vasc11_assembly`, conditional on derivative
and boundary nonnegativity. `MatrixSoundness` proves that the exact checked
integer matrix conditions imply real quadratic nonnegativity; `SparseSoundness`
proves exact polynomial normalization and comparison soundness.
`PolynomialInterfaces` links those checks to the literal derivative and boundary
polynomials; `StagedInterfaces` proves the cached composition is sound only when
all leaves, matrix witnesses and target factors have been checked.

The generated derivative and boundary modules embed certificate data and
recompute the finite checks. The final theorem combines the verified derivative and boundary certificates
with the analytic assembly proof. The forwarding helpers
`translationDerivative_nonneg` and `boundaryP_nonneg` in Assembly are not
independent certificate results.

## Source layout

`VascBoundary/` holds the boundary certificate modules: `Checked/Block000.lean`
through `Block512.lean` contain checked matrix data, `Semantic/` contains the
corresponding 513 semantic wrappers, and `Leaf/Block001.lean` through
`Block512.lean` contain the leaf checks. Eight shared modules live directly in
`VascBoundary/`. Declaration namespaces remain unchanged. `VascDerivative/`,
`VascTyped/`, and `VascPoly/` hold the derivative certificate components;
`Vasc11/` holds the analytic assembly and final theorem.

## Trust boundary

Finite integer and polynomial computations use `native_decide`. This deliberately
trusts Lean's native evaluation/compiler mechanism in addition to the usual Lean
kernel and classical axiom base; it is not a kernel-reduction-only certificate.
The real-valued soundness and analytic assembly proofs use ordinary Lean proofs.
The final theorem depends on the three classical base axioms and exactly 1,215
generated native computation axioms. It has no `sorryAx` or unrelated custom
axiom dependencies. To inspect the transitive set with Lean alone:

```sh
lake env lean Audit.lean
```

`provenance/` records SHA256 hashes of the six original certificate JSON files,
conversion manifests, and the exact generated/integrated Lean source hashes.
These hashes record provenance; successful Lean computations establish the
certificate conditions. Original converters are not dependencies of this project.
