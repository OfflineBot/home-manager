{ pkgs, ... }:
let 
    hyprConfig = pkgs.fetchgit {
        rev = "537cfaae52dd421225b7ada2a2230835576cfc0f";
        url = "https://github.com/OfflineBot/nix_modules";
        sha256 = "sha256-Rd+xOrSKO+SH3WDiKH2ht9AELu0rBOlkvIMz98pbRGw=";
        branchName = "hyprland_laptop";
    };
in
{
    home.packages = [
    ];

    home.file.".config/hypr" = {
        source = "${hyprConfig}/.";
    };
}

