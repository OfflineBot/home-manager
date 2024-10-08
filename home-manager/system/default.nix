{ config, pkgs, inputs, ... }:
{
    # Home Manager needs a bit of information about you and the paths it should
    # manage.
    home.username = "offlinebot";
    home.homeDirectory = "/home/offlinebot";
    nixpkgs.config.allowUnfree = true;

    home.stateVersion = "24.05"; # Please read the comment before ch    
    nixpkgs.config.permittedInsecurePackages = [
        "electron-25.9.0"
    ];

    home.packages = with pkgs; [
        vim
        tor-browser
        tree
        openssh
        gh
        unzip
        alsa-utils
        gcc
        python3
        rustc cargo rust-analyzer
        nodejs
        clang-tools
        zathura
        font-awesome
        nerdfonts
        alacritty
        swww
        pavucontrol brightnessctl
        killall
        gjs 
        glib
        fastfetch
        xclip wl-clipboard
        whatsapp-for-linux
        fzf
        gparted
        gimp
        lua
        lua-language-server
    ];

    imports = [ 
        inputs.ags.homeManagerModules.default 
        ../modules/default.nix
    ];

    programs.ags = {
        enable = true;  # Enable AGS

        # Additional packages to add to gjs's runtime
        extraPackages = with pkgs; [
            gtksourceview
            webkitgtk
            accountsservice
        ];
    };

    home.sessionVariables = {
        EDITOR = "nvim";
    };

    programs.home-manager.enable = true;
}
