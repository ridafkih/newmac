RED="\e[31m"
GREEN="\e[32m"
BLUE="\e[34m"
GRAY="\e[30m"
RESET="\e[0m"

function success () {
    echo -e "${GREEN}success   ✓ ${GRAY}| $1${RESET}"
}

function await () {
    echo -e "${BLUE}awaiting  … ${GRAY}| $1${RESET}"
}

read -p $'\e[34mDisplay Name (Git): \e[0m' GITHUB_FULL_NAME
read -p $'\e[34mEmail Address (Git): \e[0m' GITHUB_EMAIL

git config --global user.name $GITHUB_FULL_NAME
git config --global user.email $GITHUB_EMAIL
success "configured git"

await "installing: homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
success "installed: homebrew"

await "setting cli to bash"
brew update
brew install bash
sudo chsh -s /opt/homebrew/bin/bash $(whoami)
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bash_profile
eval "$(/opt/homebrew/bin/brew shellenv)"
await "cli has been set to bash"

await "installing applications..."
brew install --cask arc
brew install --cask linear-linear
brew install --cask raycast
brew install --cask 1password
brew install --cask visual-studio-code
brew install --cask rectangle
brew install --cask cleanshot
brew install --cask figma
brew install --cask audio-hijack
brew install --cask loopback
brew install --cask discord
brew install --cask karabiner-elements
success "installed: arc"
success "installed: linear"
success "installed: raycast"
success "installed: 1password"
success "installed: rectangle"
success "installed: vscode"
success "installed: cleanshot x"
success "installed: figma"
success "installed: audio hijack"
success "installed: loopback audio"
success "installed: discord"
success "installed: karabiner elements"

await "installing: wget"
brew install wget
success "installed: wget"

await "installing: jetbrains mono nerd font"
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font 
success "installed: jetbrains mono nerd font"

await "installing: starship"
brew install starship
echo "eval \"\$(starship init bash)\"" >> ~/.bash_profile
success "installed: starship"

await "installing: npm, node, pnpm"
brew install node
npm i --location=global npm@latest
npm i --location=global pnpm@latest
success "installed: npm, node, pnpm"

await "configuring: karabiner elements"
wget -O ~/.config/karabiner.json https://raw.githubusercontent.com/ridafkih/setup.macos/main/configs/karabiner.json
success "configured: karabiner elements"

await "configuring: rectangle"
wget -O ~/Library/Preferences/com.knollsoft.Rectangle.plist https://github.com/ridafkih/setup.macos/raw/main/configs/com.knollsoft.Rectangle.plist
success "configured: rectangle"

await "generating: ssh key"
yes 'y' | ssh-keygen -f ~/.ssh/setup-key -t ed25519 -N "" -q >> /dev/null
await "copying: public key"
cat ~/.ssh/setup-key.pub | pbcopy 
success "copied: public key copied to clipboard, paste it into your github settings under ssh & gpg settings"
