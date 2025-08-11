# Update system
sudo apt update;
sudo apt upgrade -y;

### Reboot here ###
# sudo reboot now;

# Install packages
sudo apt install -y tmux git neovim btop python3-pip htop iotop iftop unzip gcc npm fastfetch make ripgrep xclip curl;

# Copy dotfiles
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.tmux.conf --backups=1;
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/fastfetch/config.jsonc -P .config/fastfetch/ --backups=1;
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/btop/btop.conf -P .config/btop/ --backups=1;

git clone https://github.com/justinhagstrom/kickstart.nvim "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim;
