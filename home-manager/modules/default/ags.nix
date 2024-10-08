{ pkgs, ... }:
let 
    agsConfig = pkgs.fetchFromGitHub {
        owner = "OfflineBot";
        repo = "ags";
        rev = "27ba829f0d95ca6a2ed0547978a5b8c8b53d9034";
        sha256 = "0b3r1zxz4486xq0lp7bjnrvl0sqr3ngvmpfamfk6lr1ind2lkd8h";
    };
in
{
    home.packages = [
    ];

    home.file.".config/ags" = {
        source = "${agsConfig}/.";
    };
}

