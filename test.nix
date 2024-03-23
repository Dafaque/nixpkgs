let
    pkgs = import <nixpkgs> {};
    extrapkgs = import (./default.nix) {};
in
pkgs.mkShell {
    nativeBuildInputs = with pkgs; [
        go_1_22
        extrapkgs.oapi-codegen_2
    ];
}