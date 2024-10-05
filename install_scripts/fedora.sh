# Update system
sudo dnf update -y;

### Reboot here ###
# sudo reboot now;

# Install packages
sudo dnf install -y awscli \
    tmux btop fastfetch htop iotop iftop cmatrix fish \
    git git-lfs gcc g++ make npm \
    python3-pip wget unzip cargo \
    neovim lua go ripgrep fd-find ranger;

# Copy dotfiles
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.tmux.conf --backups=1;
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/fastfetch/config.jsonc -P .config/fastfetch/ --backups=1;
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/btop/btop.conf -P .config/btop/ --backups=1;

git clone https://github.com/justinhagstrom/kickstart.nvim "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim;
