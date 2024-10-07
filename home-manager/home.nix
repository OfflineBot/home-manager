{ config, pkgs, inputs, ... }:
let 
    BASH_LOC = "\\[\\033[0;34m\\]";
    BASH_ARG = "\\[\\033[0;37m\\]";
in
{
    # Home Manager needs a bit of information about you and the paths it should
    # manage.
    home.username = "offlinebot";
    home.homeDirectory = "/home/offlinebot";
    nixpkgs.config.allowUnfree = true;

    # This value determines the Home Manager release that your configuration is
    # compatible with. This helps avoid breakage when a new Home Manager release
    # introduces backwards incompatible changes.
    #
    # You should not change this value, even if you update Home Manager. If you do
    # want to update the value, then make sure to first check the Home Manager
    # release notes.
    home.stateVersion = "24.05"; # Please read the comment before changing.

    # The home.packages option allows you to install Nix packages into your
    # environment.
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
        ./modules/default.nix
    ];
    programs.ags = {
        enable = true;  # Enable AGS
        #configDir = ../ags;  # Path to your AGS config directory (adjust if needed)

        # Additional packages to add to gjs's runtime
        extraPackages = with pkgs; [
            gtksourceview
            webkitgtk
            accountsservice
        ];
    };

    # Home Manager is pretty good at managing dotfiles. The primary way to manage
    # plain files is through 'home.file'.
    home.sessionVariables = {
        EDITOR = "nvim";
    };

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
}
