# macOS Development Environment

### Homebrew

- [Install Homebrew](https://brew.sh)

Install dependencies

    brew bundle

### SSH

Generate a key pair

    ssh-keygen -t rsa -b 4096 -C "email@example.com"

Add the following to your `~/.ssh/config`

```sh
Host *
  UseKeychain yes
```

### Git

Configure Git settings

    git config --global user.name "Your Name"
    git config --global user.email "email@example.com"
    git config --global push.default simple
    git config --global core.editor "vim"
    git config --global core.ignorecase false
    git config --global pull.rebase false

### Zsh

- [.zshrc](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.zshrc)

### iTerm2

#### Theme

- [Better Solarized Dark](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/themes)

Go to `Preferences > Profiles > Colors`.

Import and select the theme under `Color Presets`.

#### Font

Go to `Preferences > Profiles > Text` and change `Font` to "Fira Code".

Check the box that says "Use ligatures".

Uncheck the box that says "Italic text".

### Vim

- [.vimrc](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.vimrc)

- [Install vim-plug](https://github.com/junegunn/vim-plug)

Symlink .vimrc for Neovim

    mkdir -p ~/.config/nvim && ln -s ~/.vimrc ~/.config/nvim/init.vim

Run `:PlugInstall` in both Vim and Neovim to fetch and install all plugins.

### tmux

- [.tmux.conf](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.tmux.conf)

- [Install tpm](https://github.com/tmux-plugins/tpm)

Press `prefix + I` in a tmux session to fetch and install all plugins.

### asdf-vm

Included is [asdf-vm](https://asdf-vm.com/#/core-manage-plugins), which you can use to manage multiple runtime versions of Node.js, Python, Ruby, etc.

### Visual Studio Code

Install extensions

    ./scripts/vscodex.sh

Enable key repeat on macOS

    defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

#### Settings

- [settings.json](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.vscode/settings.json)

#### Keybindings

- [keybindings.json](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.vscode/keybindings.json)

### PHPStorm

- [.ideavimrc](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.ideavimrc)

Install the `phpstorm` command

    cp scripts/phpstorm.sh /usr/local/bin/phpstorm

Enable key repeat on macOS

    defaults write -g ApplePressAndHoldEnabled -bool false

Go to `Preferences > Editor > Font` and change `Font` to "Fira Code".

Check the box that says "Enable ligatures".

### Chrome

Chrome extensions

- Vimium
