{ lib, config, pkgs, mentci-el-src, ... }:
let
  inherit (pkgs) stdenv;

  mentci-el = stdenv.mkDerivation {
    name = "mentci-el";
    version = "unversionned";
    src = mentci-el-src;
  };

in
{
  options = { };

  config = {
    packages = {
      inherit mentci-el;
      default = mentci-el;
    };
  };
}
