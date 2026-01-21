{
  description = "LostByte's NixOS";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-nvim = {
      url = "path:/home/lostbyte/nixos-dotfiles/config/nix-nvim";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      nix-nvim,
      ...
    }:
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.lostbyte = import ./home.nix;
              backupFileExtension = "backup";
            };
          }
        ];
      };
      nixpkgs.overlays = [
        nix-nvim.overlays.default
      ];
    };
}
