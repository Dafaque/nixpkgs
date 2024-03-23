# Usage
```nix
let
    pkgs = import <nixpkgs> {};
    extrapkgs = import (builtins.fetchGit {
        url = https://github.com/Dafaque/nixpkgs.git;
        ref = refs/tags/v1.1.0;
    }) {};
in
pkgs.mkShell {
    nativeBuildInputs = with pkgs; [
        go_1_22
        extrapkgs.oapi-codegen_2
    ];
}
```

# Repository content
* [oapi-codegen](https://github.com/deepmap/oapi-codegen) v2.0.0
* [cargs](https://github.com/Dafaque/cargs) v1.0.3
