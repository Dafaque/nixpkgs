{pkgs ? import <nixpkgs> {}}:
with pkgs; {
    oapi-codegen_2_0 = callPackage ./pkgs/oapi-codegen/2.0.0.nix {
        buildGoModule = buildGo119Module;
    };
    cargs = callPackage ./pkgs/cargs {
        buildGoModule = buildGo119Module;
    };
}
