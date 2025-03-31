#!/bin/bash

################################################################################
# Step 1: Install Zsh
# On Ubuntu, this command installs Zsh
sudo apt install zsh

# Step 2: Install Oh My Zsh
# This command downloads and installs Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set Zsh as the default shell
# Note: You may need to log out and log back in for this change to take effect
chsh -s $(which zsh)

# Step 3: Install zsh-syntax-highlighting Plugin
# Clone the plugin into the Oh My Zsh custom plugins directory
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Step 4: Install Powerlevel10k Theme
# Clone the Powerlevel10k theme into the Oh My Zsh custom themes directory
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Restart Zsh to apply the changes
# exec zsh

# Optional: Install the recommended font for Powerlevel10k
# Follow the instructions on the Powerlevel10k GitHub page

################################################################################
# for gcc and make which will surely be needed
sudo apt update
sudo apt install build-essential

################################################################################
# for plenary lua and luarocks are needed
sudo apt install lua5.1 liblua5.1-dev
# at the time required 5.1 version specifically
# sudo apt install lua5.4 liblua5.4-dev
wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz
tar zxpf luarocks-3.11.1.tar.gz
cd luarocks-3.11.1
cd luarocks-3.11.1
sudo apt-get install unzip
./configure && make && sudo make install

################################################################################
# docker for docker 
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# verfification:
# sudo docker run hello-world

################################################################################
# nodejs for pyright and maybe nodejs
# sudo apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_23.x -o nodesource_setup.sh
sudo -E bash nodesource_setup.sh
sudo apt-get install -y nodejs
# node -v

################################################################################
# pip because it is not installed for some reason
sudo apt-get update
sudo apt-get install python3-pip
sudo apt-get install python3-cffi python3-dev python3-pypandoc python3-setuptools python3-venv
##################################################

# for jukit
sudo apt install python3-pynvim
################################################################################
#  for neovim
sudo add-apt-repository ppa:neovim-ppa/unstable

sudo apt-get update

sudo apt-get install neovim 

sudo apt-get install ripgrep

###############################################################################
# for tmux
sudo apt-get install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# also you somehow need to source tmux.conf

# for tmux-sessionizer
sudo apt install fzf
# also i need to change home_dir in path
sed 's/igor/irgori/g' ./.zshrc > ./.zshrc
################################################################################
# gh cli
# remember to try to authenticate from just terminal, not tmux 
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
	&& sudo mkdir -p -m 755 /etc/apt/keyrings \
        && out=$(mktemp) && wget -nv -O$out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
        && cat $out | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
	&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
	&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
	&& sudo apt update \
	&& sudo apt install gh -y

################################################################################
# poetry
curl -sSL https://install.python-poetry.org | python3 -
################################################################################
# 7zip
sudo apt-get install p7zip-full
################################################################################
# R (hope i wont have to install it at some point)
sudo apt-get update
sudo apt-get install r-base
sudo apt-get install r-base-dev
sudo apt-get install libxml2-dev libssl-dev libcurl4-openssl-dev libfreetype-dev libfontconfig1-dev libharfbuzz-dev
sudo apt-get install libfribidi-dev libharfbuzz-dev libpng-dev
sudo apt-get install libtiff5-dev libjpeg-dev libpng-dev
