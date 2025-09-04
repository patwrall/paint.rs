{ callPackage
, rust-analyzer
, rustfmt
, clippy
, cargo
, pkg-config
, gtk4
, ...
}:
let
  mainPkg = callPackage ./default.nix { };
in
mainPkg.overrideAttrs (oa: {
  nativeBuildInputs = [
    # Additional rust tooling
    rust-analyzer
    rustfmt
    clippy
    cargo

    pkg-config
    gtk4
  ]
  ++ (oa.nativeBuildInputs or [ ]);
})
