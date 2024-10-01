sudo dnf update -y;

# reboot

sudo dnf install -y awscli \
    tmux btop fastfetch htop iotop iftop cmatrix fish \
    git git-lfs gcc g++ make npm \
    python3-pip wget unzip \
    neovim lua go ripgrep fd-find;

wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.tmux.conf;
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/fastfetch/config.jsonc -P .config/fastfetch/;
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/btop/btop.conf -P .config/btop/;

git clone https://github.com/justinhagstrom/kickstart.nvim "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim;
