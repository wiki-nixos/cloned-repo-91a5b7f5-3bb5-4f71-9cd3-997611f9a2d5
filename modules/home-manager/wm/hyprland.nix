{ pkgs, ... }:

{
  imports = [
    ./submodules/alacritty.nix
    ./submodules/cliphist.nix
    ./submodules/gammastep.nix
    ./submodules/hypridle.nix
    ./submodules/hyprland_conf/hyprland_conf.nix
    ./submodules/kanshi.nix
    ./submodules/media_controls.nix
    ./submodules/tofi.nix
    ./submodules/screenshot.nix
    ./submodules/swaylock.nix
    ./submodules/swaync/swaync.nix
    ./submodules/swww.nix
    ./submodules/waybar/waybar.nix
  ];

  # programs needed to run hyprland with to current config
  home.packages = with pkgs; [
    libsForQt5.polkit-kde-agent
    nwg-displays
    swayidle
    #wlr-randr
  ];

  services.kdeconnect = {
    enable = true;
    indicator = true;
  };
}
