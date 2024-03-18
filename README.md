## Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```

2. Generate and add new SSH key
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent


3. Clone repo into new hidden directory.

```zsh
# Use SSH (if set up)...
git clone git@github.com:eieioxyz/Beyond-Dotfiles-in-100-Seconds.git ~/.dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/eieioxyz/Beyond-Dotfiles-in-100-Seconds.git ~/.dotfiles
```


4. Create symlinks in the Home directory to the real files in the repo.

```zsh
# There are better and less manual ways to do this;
# investigate install scripts and bootstrapping tools.

ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.zprofile ~/.zprofile
ln -s ~/.dotfiles/.config/ ~/.config
```


5. Install Homebrew, followed by the software listed in the Brewfile.

```zsh
# These could also be in an install script.

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Then pass in the Brewfile location...
brew bundle --file ~/.dotfiles/Brewfile

# ...or move to the directory first.
cd ~/.dotfiles && brew bundle

# make fish the new default
chsh -s /usr/local/bin/fish
```


## Kudos!
Watch the [video collaboration](https://youtu.be/r_MpUP6aKiQ "Dotfiles in 100 Seconds on YouTube") between [fireship.io](https://fireship.io/ "Build and ship 🔥 your app ⚡ faster") and [eieio.xyz](http://dotfiles.eieio.xyz "Dotfiles from Start to Finish-ish")
