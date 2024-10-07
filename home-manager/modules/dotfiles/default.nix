{ pkgs, ... }:
{
    imports = [
        ./ags.nix
        ./bash.nix
        #./folders.nix
        ./hypr.nix
        ./image.nix
        ./kitty.nix
        ./nvim.nix
        ./zathura.nix
    ];
}
