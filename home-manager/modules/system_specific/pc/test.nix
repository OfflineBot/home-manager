{ pkgs, ... }:
let 
    hyprConfig = pkgs.fetchFromGitHub {
        owner = "OfflineBot";
        repo = "nix_modules";
        ref = "hyprland";
    };
in
{
    home.packages = [
    ];

    home.file.".config/testing" = {
        source = "${hyprConfig}/.";
    };
}

