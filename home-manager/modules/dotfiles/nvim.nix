{ pkgs, ... }:
let 
    nvimConfig = pkgs.fetchFromGitHub {
        owner = "OfflineBot";
        repo = "neovim";
        rev = "8c2303214ae8eb942e0578e11b2bc46ad98f03db";
        sha256 = "15rw8fs242iavx295pbhd027akiq023z1gjz3dr6z51xl017ly6m";
    };
in
{
    home.packages = [
    ];

    home.file.".config/nvim" = {
        source = "${nvimConfig}/.";
    };
}

