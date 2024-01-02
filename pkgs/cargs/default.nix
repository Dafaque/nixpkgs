{ lib, buildGoModule }:
buildGoModule rec {
    pname = "cargs";
    version = "1.0.3";

    src = builtins.fetchGit {
        url = "https://github.com/dafaque/${pname}";
        ref = "refs/tags/v${version}";
    };
    vendorHash = "sha256-dbAqobhatTWEituCUY8VOYRdINeFeVLhUFqliUwOhYI=";
    proxyVendor = true;
    doCheck = false;
    ldflags = "-X main.version=v${version}";

    meta = with lib; {
        description = "Config file properties to cli arguments converter";
        homepage    = "https://github.com/pressly/goose";
        license     = licenses.free;
    };
}
