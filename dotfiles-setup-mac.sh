# Run the following command to download this script
# cd ~/Downloads; curl -fsSL https://raw.githubusercontent.com/DivM/utils/main/dotfiles-setup-mac.sh -o dotfiles-setup-mac.sh; /bin/bash dotfiles-setup-mac.sh

# install git; following line will spin up a GUI
git --version

# install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zshrc

# install Github CLI (for private repo access)
brew install gh
brew install --cask google-chrome

# authenticate using Github CLI
gh auth login

cd ~/Documents/
git clone https://github.com/divM/dotfiles.git
