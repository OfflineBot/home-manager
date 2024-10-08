{ pkgs, ... }:
let 
    hyprConfig = pkgs.fetchFromGitHub {
        owner = "OfflineBot";
        repo = "hyprland";
        rev = "1e5200efc4bc8d61d80192ec01974bbba84d1ecd";
        sha256 = "0lkrb7d6w8jhq8wgamyb57z7jyw52lhvcks8szkldg8pa8qqa68s";
    };
in
{
    home.packages = [
    ];

    home.file.".config/hypr" = {
        source = "${hyprConfig}/.";
    };
}

