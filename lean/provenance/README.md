# Certificate provenance

`source_sha256.json` records the six original exact JSON certificate inputs.
Conversion manifests record the source block order and dimensions. Source
manifests bind generated Lean files to their source versions and record any
mechanical import changes. These hashes are provenance, not proof assumptions:
Lean recomputes certificate conditions from the checked-in Lean data.

Original JSON files, Python converters, SCS and SymPy are not build inputs.

`boundary_layout_mapping.json` records the flat-to-directory module moves.
`boundary_layout_audit.json` binds every Lean source to the pre-move commit and
checks exact byte equality after removing import lines. Only module paths and
imports changed; declarations, proof bodies, and certificate data are identical.
