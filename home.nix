{ config, pkgs, ... }:
let
  dotfiles = "${config.home.homeDirectory}/nixos-dotfiles/config";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
  configs = {
    sway = "sway";
    nvim = "nix-nvim/nvim";
    foot = "foot";
    fuzzel = "fuzzel";
    waybar = "waybar";
    fastfetch = "fastfetch";
  };
in

{
  home.username = "lostbyte";
  home.homeDirectory = "/home/lostbyte";
  home.stateVersion = "25.11";
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    fastfetch
    pavucontrol
    unzip
    fuzzel
    waybar
    cargo
    nodejs
    gcc
    openssh
    postman
  ];

  # programs.waybar.enable = true;
  programs.git = {
    enable = true;
  };
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo I use nixOS, btw";
      ll = "ls -la";
      rebuild-switch = "sudo nixos-rebuild switch --flake /home/lostbyte/nixos-dotfiles#nixos";
      cl = "clear && cd && fastfetch";
      fetch = "fastfetch";
    };
  };
  xdg.configFile = builtins.mapAttrs (name: subpath: {
    source = create_symlink "${dotfiles}/${subpath}";
    recursive = true;
  }) configs;
}
