{ pkgs, ... }:

{
  home.packages = with pkgs; [
    texliveFull
    jabref
  ];
}

