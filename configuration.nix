{ modulesPath, config, pkgs, ... }: {
    system.stateVersion = "24.05";

    imports = [ "${modulesPath}/virtualisation/amazon-image.nix" ];
    ec2.efi = true;

    environment.systemPackages = with pkgs; [
        awscli
        tmux
        btop
        fastfetch
        htop
        iotop
        iftop
        cmatrix
        fish
        git
        gcc
        gnumake
        wget
        unzip
        neovim
        lua
        go
        ripgrep
        fd
        ranger
        nodejs_22
        python312
    ];
}
