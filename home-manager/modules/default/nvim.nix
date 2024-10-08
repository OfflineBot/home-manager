{ pkgs, ... }:
let 
    nvimConfig = pkgs.fetchgit {
        rev = "c213b4e69f407e8d688b95052198f9c23a899fde";
        url = "https://github.com/OfflineBot/nix_modules";
        sha256 = "sha256-1Xh6AqA9lG9yG1++8IcAOE51BGhw3ZJE3yoKIrRDPJc=";
        branchName = "neovim";
    };
in
{
    home.packages = [
    ];

    home.file.".config/nvim" = {
        source = "${nvimConfig}/.";
    };
}

