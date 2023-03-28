# Run the following command to download this script
# cd ~/Downloads; curl -fsSL https://raw.githubusercontent.com/DivM/utils/main/dotfiles-setup-ubuntu.sh -o dotfiles-setup-ubuntu.sh; /bin/bash dotfiles-setup-ubuntu.sh

# install git
sudo apt-get install git -y

# install Github CLI (for private repo access)
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# authenticate using Github CLI
gh auth login

cd ~/Documents/
git clone https://github.com/divM/dotfiles.git
