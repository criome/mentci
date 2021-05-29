{
  description = "Mentci - The Mind Tool";

  inputs = {
    nixpkgs = { type = "indirect"; id = "nixpkgs"; };

    flake-parts = {
      type = "indirect";
      id = "flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };

    mentci-el-src = { url = path:./mentci-el; flake = false; };
  };

  outputs = inputs@{ self, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; }
      (import ./nix/flakePart.nix);
}
