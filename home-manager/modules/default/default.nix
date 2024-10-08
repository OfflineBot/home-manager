{ pkgs, ... }:
{
    imports = [
        ./ags.nix
        ./bash.nix
        #./hypr.nix
        ./image.nix
        ./kitty.nix
        ./nvim.nix
        ./zathura.nix
    ];
}
