## Apple App Store Downloads
The following are softwares that should be installed through the official Apple App Store, it's easier to just get these over with in the beginning.

1. Final Cut Pro
2. Xcode

## Xcode CLI Installation
This installs the XCode CLI and development tools without having to download anything manually.

```bash
xcode-select --install
```

## Brew Installation
Homebrew will be used to install all applications and CLI tools made available through its repositories.

### Download & Install
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### Set CLI to Bash

```bash
brew update
brew install bash
sudo chsh -s /opt/homebrew/bin/bash $(whoami)
```

### Complete Bash & Brew Configuration

```bash
bash
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bash_profile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## CLI Software Installation
This installs all my preferred software without having to navigate about the web and install them manually.

```bash
brew install --cask arc
brew install --cask linear-linear
brew install --cask raycast
brew install --cask 1password
brew install --cask visual-studio-code
brew install --cask cleanshot
brew install --cask figma
brew install --cask audio-hijack
brew install --cask loopback
```

## Web Software Installations
Software that is not available through Brew Cask.

1. Screen Studio from https://screen.studio

## Clean Dock
My preferred dock applications & order.

1. Finder
2. Arc Browser
3. Linear
4. Cleanshot X
5. Screen Studio
6. 1Password
7. Visual Studio Code
8. Apple Music

## Terminal Configuration
My preferred, very simple terminal configuration.

### Install Preferred Nerd Font

```bash
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font 
```

### Install & Configure Starship

```bash
brew install starship
echo "eval \"\$(starship init bash)\"" >> ~/.bash_profile
```

## Development Tools
Various development tools that I use on a day-to-day basis.

### Install NPM

```bash
brew install node
```

### Install PNPM

```bash
npm i -g pnpm@latest
```

## Visual Studio Code Settings

[TBD]
