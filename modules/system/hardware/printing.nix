{ pkgs, ... }:

{
  # Enable CUPS to print documents + avahi
  services.printing.enable = true;
  services.avahi.enable = true;
  services.avahi.nssmdns4 = true;
  services.avahi.openFirewall = true;
  environment.systemPackages = [ pkgs.cups-filters ];
}
