{ lib, config, pkgs, mentci-rs-src, ... }:
let
  inherit (pkgs) stdenv;

  mentci-rs = stdenv.mkDerivation {
    name = "mentci-rs";
    version = "unversionned";
    src = mentci-rs-src;
  };

in
{
  options = { };

  config = {
    packages = {
      inherit mentci-rs;
      default = mentci-rs;
    };
  };
}
