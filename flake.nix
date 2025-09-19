{
  description = "Development, automated tests and CI / CD environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }: {
    devShells.x86_64-linux.default =
      let
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
      in
      pkgs.mkShell {
        buildInputs = [
          pkgs.git
        ];

        shellHook = ''
          echo "🎮 Welcome to your environment!"
          git --version
        '';
      };

    # (Optional, for later CI/CD builds)
    packages.x86_64-linux.git = nixpkgs.legacyPackages.x86_64-linux.git;
  };
}

