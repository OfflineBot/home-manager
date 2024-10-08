{ pkgs, ... }:
let 
    hyprConfig = pkgs.fetchgit {
        #owner = "OfflineBot";
        #repo = "nix_modules";
        rev = "3387a1d4b9ce6f391aacfaf231eaf61c19f8472a";
        url = "https://github.com/OfflineBot/nix_modules";
        branchName = "hyprland";
        sha256 = "0000000000000000000000000000000000000000000000000000";
    };
in
{
    home.packages = [
    ];

    home.file.".config/testing" = {
        source = "${hyprConfig}/.";
    };
}

