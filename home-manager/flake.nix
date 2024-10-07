{
  description = "Home Manager configuration of offlinebot";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    ags.url = "github:Aylur/ags";
  };

  outputs = { home-manager, nixpkgs, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    homeConfigurations."offlinebot" = home-manager.lib.homeManagerConfiguration {
      pkgs = import nixpkgs { inherit system; };

      # pass inputs as specialArgs
      extraSpecialArgs = { inherit inputs; };

      # import your home.nix
      modules = [ ./home.nix ];
    };
  };
}
