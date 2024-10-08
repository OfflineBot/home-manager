{ pkgs, ... }:
let 
    agsConfig = pkgs.fetchgit {
        rev = "43786b889bbe095513884c2d618996c8022a55b3";
        url = "https://github.com/OfflineBot/nix_modules";
        sha256 = "sha256-ELVJRbMxZGqmq8rdup8dGWtAd7ZynUsB7gYR8vsPeSw=";
        branchName = "ags";
    };
in
{
    home.packages = [
    ];

    home.file.".config/ags" = {
        source = "${agsConfig}/.";
    };
}

