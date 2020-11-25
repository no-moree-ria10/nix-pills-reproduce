with(import <nixpkgs> {});
derivation {
    name = "foo"; 
    builder = "${bash}/bin/bash"; 
    system = builtins.currentSystem; 
    args=[./builder.sh]; 
    inherit gcc coreutils; 
    src=./simple.c;}