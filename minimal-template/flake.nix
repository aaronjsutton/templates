{
  description = "A minimal developer environment.";
  inputs = {
    unstable.url = "nixpkgs/nixpkgs-unstable";
  };
  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    forAllSystems = function: 
    nixpkgs.lib.genAttrs [
      "x86_64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ] (system: function nixpkgs.legacyPackages.${system});
  in {
  devShells = forAllSystems (pkgs: {
    default = pkgs.mkShell {
      buildInputs = with pkgs; [
        # Add your packages.
      ];
    };
  });
};
}
