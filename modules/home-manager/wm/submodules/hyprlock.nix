{ pkgs, inputs, ... }:
let
  #walColor = (builtins.fromJSON (builtins.readFile ./colors-rgb.json)).colors.color1;
  labelColor = "rgba(0, 0, 0, 0.8)";
in
{
  imports = [
    inputs.hyprlock.homeManagerModules.hyprlock
  ];

  #home.packages = [ inputs.hyprlock.packages."x86_64-linux".hyprlock ];

  programs.hyprlock = {
    enable = true;
    backgrounds = [{ path = "/home/leon/scripts/wallpaper/wallpaper_blurred.png"; }];
    labels = [
      {
        text = "<b>$TIME</b>";
        color = labelColor;
        font_size = 50;
        font_family = "NotoMonoNerdFont";
        position = {x=0; y=250;};
      }
      {
        text = ''󱁕 Hey <span foreground="##880000" style="italic">$USER</span> 󱁕'';
        color = labelColor;
        position = {x=0; y=30;};
      }
      {
        text = "";
        color = labelColor;
        position = {x=0; y=0;};
        valign = "bottom";
      }
    ];

    input-fields = [
      {
        outline_thickness = 1;
        dots_spacing = 0.3;
        outer_color = "rgba(0, 0, 0, 0)";
        inner_color = "rgba(0, 0, 0, 0)";
        font_color = "rgba(255, 255, 255, 0.5)";
        fade_on_empty = false;
        hide_input = false;
        position = {x=0; y=-30;};
      }
    ];
  };

  wayland.windowManager.hyprland.settings = {
    bindr = [ "$mainMod, L, exec, hyprlock" ];
  };
}

