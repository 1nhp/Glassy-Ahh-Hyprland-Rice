#bin/sh

# Copy the zshrc config to the user's home directory
sudo cp -r .zshrc ~
sudo cp -r .p10k.zsh ~
sudo cp -r .oh-my-zsh ~

# Copy the local and config folders to the user's folder
cp -r .local ~/.local/share
cp -r .config ~
