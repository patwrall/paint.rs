{ rustPlatform
}:
rustPlatform.buildRustPackage {
  pname = "paint.rs";
  version = "0.0.1";

  src = ./.;
  cargoLock.lockFile = ./Cargo.lock;
}
