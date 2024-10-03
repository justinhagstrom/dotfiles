# Update system
sudo zypper up -y;

### Reboot here ###

# Install packages
sudo zypper install -y awscli \
    tmux btop fastfetch neofetch \
    htop iotop iftop fish \
    git git-lfs gcc make npm \
    python3-pip wget unzip \
    neovim lua go ripgrep fd;

# Copy dotfiles
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.tmux.conf --backups=1;
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/fastfetch/config.jsonc -P .config/fastfetch/ --backups=1;
#wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/btop/btop.conf -P .config/btop/ --backups=1;

git clone https://github.com/justinhagstrom/kickstart.nvim "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim;