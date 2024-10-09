{ pkgs, ... }:
let 
    hyprConfig = pkgs.fetchgit {
        rev = "e7f2e30a9c65d73dc6d9af0e108bdbc82e097114";
        url = "https://github.com/OfflineBot/nix_modules";
        sha256 = "sha256-L68fWIwuf40YDrMxCcoJXnYf3i358ReQuINgcx8OwiQ=";
        branchName = "hyprland";
    };
in
{
    home.packages = [
    ];

    home.file.".config/hypr" = {
        source = "${hyprConfig}/.";
    };
}

