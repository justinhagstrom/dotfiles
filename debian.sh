sudo apt update;
sudo apt upgrade -y;

# reboot

sudo apt install -y tmux git neovim btop python3-pip htop iotop iftop unzip gcc npm neofetch make ripgrep xclip curl;

wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.tmux.conf;
wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/fastfetch/config.jsonc -P .config/fastfetch/;
# wget https://raw.githubusercontent.com/justinhagstrom/dotfiles/refs/heads/main/.config/btop/btop.conf -P .config/btop/;

git clone https://github.com/justinhagstrom/kickstart.nvim "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim;

sed -i "s/fastfetch/neofetch/g" .tmux.conf;