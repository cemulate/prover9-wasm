# prover9-wasm

This repo is a cleaned up and git-tracked port of the [Prover9 and Mace4](https://www.cs.unm.edu/~mccune/prover9/) source code.
The initial commit is a direct copy from 

https://www.cs.unm.edu/~mccune/prover9/download/LADR-2009-11A.tar.gz

while the following are clean up / ignoring of binaries and temporary files.

Finally, it adds the ability to build the project to WASM/js using Emscripten, for use in [prover9-web](https://github.com/cemulate/prover9-web).
JS and WASM are produced via `build_wasm.sh`.
