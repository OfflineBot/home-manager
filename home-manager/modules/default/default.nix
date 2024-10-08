{ pkgs, ... }:
{
    imports = [
        ./ags.nix
        ./bash.nix
        ./image.nix
        ./kitty.nix
        ./nvim.nix
        ./zathura.nix
    ];
}
