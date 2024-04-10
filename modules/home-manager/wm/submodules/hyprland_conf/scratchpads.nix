{ ... }:

{
  wayland.windowManager.hyprland.settings = {
    workspace = [
      "special:btop, on-created-empty:[fullscreen] alacritty -e btop"
      "special:htop, on-created-empty:[fullscreen] alacritty -e htop"
      "special:spotify, on-created-empty:[fullscreen] spotify"
      "special:terminal, on-created-empty:[fullscreen] alacritty"
    ];
    bind = [
      "$mainMod, B, togglespecialworkspace, btop"
      "$mainMod, H, togglespecialworkspace, htop"
      "$mainMod, S, togglespecialworkspace, spotify"
      "$mainMod, T, togglespecialworkspace, terminal"
    ];
    animation = [
      "specialWorkspace, 1, 5, default, slidefadevert"
    ];
  };
}