{ config, pkgs, ... }:
let 
    BASH_LOC = "\\[\\033[0;34m\\]";
    BASH_ARG = "\\[\\033[0;37m\\]";
in
{
    home.file.".bashrc".text = ''
        # Source global definitions
        if [ -f /etc/bashrc ]; then
            . /etc/bashrc
        fi

        # User specific environment
        if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
            PATH="$HOME/.local/bin:$HOME/bin:$PATH"
        fi
        export PATH

        # Uncomment the following line if you don't like systemctl's auto-paging feature:
        # export SYSTEMD_PAGER=

        # User specific aliases and functions
        if [ -d ~/.bashrc.d ]; then
            for rc in ~/.bashrc.d/*; do
                if [ -f "$rc" ]; then
                    . "$rc"
                fi
            done
        fi
        unset rc


        # bash completion
        if [ -f /etc/bash_completion ]; then
            . /etc/bash_completion
        fi


        # dark theme
        #gsettings set org.gnome.desktop.interface gtk-theme 'Breeze-Dark'
        #gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

        PS1="${BASH_LOC}\w> ${BASH_ARG}"
    '';
}
