# Initial setup of pacman
sudo pacman-key --init;
sudo pacman-key --populate;
sudo reflector --country "US" --protocol https,http --score 20 --sort rate --save /etc/pacman.d/mirrorlist;

# Update system
sudo pacman -Syu --noconfirm;

### Reboot here ###
# sudo reboot now;

# Install packages
sudo pacman -S --noconfirm --needed tmux fastfetch neovim ripgrep fd \
    ranger btop htop iotop iftop fish \
    git python-pip base-devel unzip gcc npm make go;

# Copy dotfiles
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.tmux.conf --backups=1;
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/fastfetch/config.jsonc -P .config/fastfetch/ --backups=1;
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/btop/btop.conf -P .config/btop/ --backups=1;

git clone https://github.com/justinhagstrom/kickstart.nvim "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim;

# Install yay
git clone https://aur.archlinux.org/yay.git;
cd yay;
makepkg -si --noconfirm;
cd;
