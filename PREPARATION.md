# Package preparation checks

Inputs: tracked Lean commit 0955a5ea79b8d8840f9a91687ee96cbbd0109fbe,
six JSON certificates and two standalone scripts from the final certificate
bundle. Output: this repository-ready directory and its SHA256 manifest.

Preparation budget: one worker; 2,049 tracked files (109,045,708 bytes), eight
certificate/replay files (about 54 MB); stream archive and SHA256 processing;
under 256 MiB for packaging and under two minutes expected. Replay budget: two
sequential single-CPU runs, 120-second external limit per run, original 2/3 GiB
address-space caps. No fresh Lean build is undertaken. A timeout is an incomplete
check rather than a failed identity.

The SHA256 manifest excludes itself and generated replay reports. It includes
this file and every source/configuration file. It must be regenerated after any
intentional release edits, including adding authorship or license files.
