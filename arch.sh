sudo pacman-key --init;
sudo pacman-key --populate;
sudo reflector --country "US" --protocol https,http --score 20 --sort rate --save /etc/pacman.d/mirrorlist;
sudo pacman -Syu --noconfirm;

# reboot

sudo pacman -S --noconfirm fastfetch tmux git neovim btop python-pip htop iotop iftop unzip gcc npm make ripgrep fd ranger go fish;

wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.tmux.conf;
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/fastfetch/config.jsonc -P .config/fastfetch/;
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/btop/btop.conf -P .config/btop/;

git clone https://github.com/justinhagstrom/kickstart.nvim "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim;
