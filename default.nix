{pkgs ? import <nixpkgs> {}}:
with pkgs; {
    oapi-codegen_2 = callPackage ./pkgs/oapi-codegen/2.nix {
        buildGoModule = buildGoModule;
    };
    cargs = callPackage ./pkgs/cargs {
        buildGoModule = buildGoModule;
    };
}
