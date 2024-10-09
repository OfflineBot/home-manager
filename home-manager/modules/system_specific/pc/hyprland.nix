{ pkgs, ... }:
let 
    hyprConfig = pkgs.fetchgit {
        rev = "3387a1d4b9ce6f391aacfaf231eaf61c19f8472a";
        url = "https://github.com/OfflineBot/nix_modules";
        sha256 = "sha256-GhmFMVIXvUbn10hPtiEVhXt5/inLV/U4wlAibtpZeVI=";
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

