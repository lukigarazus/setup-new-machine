set -o allexport
source .env set
+o allexport

git -v
git config --global user.name $FULL_NAME
git config --global user.email $GITHUB_EMAIL

sudo chown $USER_NAME ~/.ssh
ssh-keygen -t ed25519 -C $GITHUB_EMAIL
eval "$(ssh-agent -s)"
mkdir ~/.ssh
sudo cp ssh_config ~/.ssh/config
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
# after everything run this and copy the result to github pbcopy < ~/.ssh/id_ed25519.pub

mkdir ~/.config

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "eval $(/opt/homebrew/bin/brew shellenv)" >>.zshrc

brew install asdf
echo ". /opt/homebrew/opt/asdf/libexec/asdf.sh" >>.zshrc

cp .zshrc ~/.zshrc

asdf plugin add nodejs
asdf install nodejs 20.6.0
asdf global nodejs 20.6.0

brew install --cask karabiner-elements
mkdir ~/.config/karabiner
cp -f ./karabiner.json ~/.config/karabiner
# setting up permissions for karabiner is tricky so leaving that out for now
# in addition to this you'll need to go to system keyboard shortcuts and set up cmd + option + left/right to switch between spaces

brew install kitty
brew install neovim
cp -r ./nvim-new ~/.config/nvim/
# once you install neovim you will probably need to relaunch the terminal as node will not be available to install some of the lazyvim plugins

brew install raycast
# here you will need to manually set the keyboard shortcut

brew install shortcat

curl https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling-porn-social/hosts >./hosts
cat custom_hosts >>hosts
sudo mv hosts /etc/
