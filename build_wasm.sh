#!/bin/bash

EMSCRIPTEN_SETTINGS=\
"-sALLOW_MEMORY_GROWTH "\
"-sMODULARIZE "\
"-sEXPORT_ES6 "\
"-sUSE_ES6_IMPORT_META=0 "\
"-sENVIRONMENT=web "\
"-sEXPORT_NAME='Prover9' "\
"-sINVOKE_RUN=0 "\
"-sEXPORTED_RUNTIME_METHODS=['callMain'] "

CC=emcc XFLAGS=$EMSCRIPTEN_SETTINGS make all

mv ./bin/prover9 ./bin/prover9.js
mv ./bin/mace4 ./bin/mace4.js

cp ./provers.src/prover9.wasm ./bin
cp ./mace4.src/mace4.wasm ./bin
