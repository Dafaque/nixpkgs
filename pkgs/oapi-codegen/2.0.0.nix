{ lib, buildGoModule }:
buildGoModule rec {
  pname = "oapi-codegen";
  version = "2.0.0";

  src = builtins.fetchGit {
    url = "https://github.com/deepmap/${pname}";
    ref = "refs/tags/v${version}";
  };
  
  subPackages = ["cmd/${pname}"];
  vendorHash = "sha256-QOeXTIrAeFRGTv0iH8iKmbdVVALca5RVCuAryi0iMPM=";
  proxyVendor = true;
  ldflags = "-X main.noVCSVersionOverride=v${version}";

  # Tests use network
  doCheck = false;

  meta = with lib; {
    description = "Go client and server OpenAPI 3 generator";
    homepage    = "https://github.com/deepmap/oapi-codegen";
    license     = licenses.asl20;
    maintainers = with maintainers; [ j4m3s ];
  };
}
