{ pkgs, ... }: 
{
    home.file = {
        #".config/hypr".source = /home/offlinebot/.dotfiles/.config/hypr;
        #".config/nvim".source = /home/offlinebot/.dotfiles/.config/nvim;
        #".config/ags".source = /home/offlinebot/.dotfiles/.config/ags;
        #"Pictures/active_wallpaper".source = /home/offlinebot/.dotfiles/Pictures/active_wallpaper;
    };
}
