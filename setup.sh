#!/bin/bash

# Step 1: Install Zsh
# On Ubuntu, this command installs Zsh
sudo apt install zsh

# Check if Zsh was successfully installed
if! command -v zsh &> /dev/null; then
    echo "Zsh could not be installed."
else
    echo "Zsh installed successfully."
fi

# Step 2: Install Oh My Zsh
# This command downloads and installs Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set Zsh as the default shell
# Note: You may need to log out and log back in for this change to take effect
chsh -s $(which zsh)

# Step 3: Install zsh-syntax-highlighting Plugin
# Clone the plugin into the Oh My Zsh custom plugins directory
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Add zsh-syntax-highlighting to the list of plugins in.zshrc
# Replace (...) with your existing plugins
echo "plugins=(... zsh-syntax-highlighting)" >> ~/.zshrc

# Step 4: Install Powerlevel10k Theme
# Clone the Powerlevel10k theme into the Oh My Zsh custom themes directory
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Set Powerlevel10k as the theme in.zshrc
# Note: This command overwrites the ZSH_THEME line in.zshrc
sed -i.bak 's/ZSH_THEME=".*"/ZSH_THEME="powerlevel10k/powerlevel10k"/' ~/.zshrc

# Restart Zsh to apply the changes
exec zsh

# Optional: Configure Powerlevel10k
# Run p10k configure to customize your prompt appearance
# p10k configure

# Optional: Install the recommended font for Powerlevel10k
# Follow the instructions on the Powerlevel10k GitHub page

# Optional: Add other plugins
# Example: Adding zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# Add zsh-autosuggestions to the plugins list in.zshrc

##################################################
# python stuff
sudo apt-get install python3-cffi python3-dev python3-pypandoc python3-setuptools
##################################################
#  for neovim
sudo add-apt-repository ppa:neovim-ppa/unstable

sudo apt-get update

sudo apt-get install neovim 

sudo apt-get install ripgrep

#################################################
# for tmux
sudo apt-get install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
