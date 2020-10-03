# Mac OS X Development Environment

### Docker Desktop

* [Install Docker Desktop](https://hub.docker.com/editions/community/docker-ce-desktop-mac)

### Homebrew

* [Install Homebrew](https://brew.sh)

### SSH

Generate a key pair

    $ ssh-keygen -t rsa -b 4096 -C "email@example.com"

Add the following to your `~/.ssh/config`

```sh
Host *
    UseKeychain yes
```

Install dependencies

    $ brew bundle

### Git

Configure Git settings

    $ git config --global user.name "Your Name"
    $ git config --global user.email "email@example.com"
    $ git config --global push.default simple
    $ git config --global core.editor "vim"
    $ git config --global core.ignorecase false
    $ git config --global pull.rebase false

### Zsh

* [.zshrc](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.zshrc)

Go to `System Preferences > Users & Groups`

Right click on your user and select `Advanced Options`

Change `Login shell` to `/bin/zsh`

[Update zsh permissions](https://github.com/zsh-users/zsh-completions/issues/433#issuecomment-600582607)

### iTerm2

#### Theme

* [Better Solarized Dark](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/themes)

Go to `Preferences > Profiles > Colors`

Import and select the theme under `Color Presets`

#### Font

Go to `Preferences > Profiles > Text` and change `Font` to "Fira Code".

Check the box that says "Use ligatures"

### Vim

* [.vimrc](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.vimrc)

* [Install vim-plug](https://github.com/junegunn/vim-plug)

Run `:PlugInstall` in Vim to fetch and install all plugins

### tmux

* [.tmux.conf](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.tmux.conf)

* [Install tpm](https://github.com/tmux-plugins/tpm)

Press `prefix + I` in a tmux session to fetch and install all plugins

### asdf-vm

Included is [asdf-vm](https://asdf-vm.com/#/core-manage-plugins), which you can use to manage multiple runtime versions of Node.js, Python, Ruby, etc.

### PHPStorm


Install `phpstorm` command

    $ cp scripts/phpstorm.sh /usr/local/bin/phpstorm

#### Font

Go to `Preferences > Editor > Font` and change `Font` to "Fira Code".

Check the box that says "Enable font ligatures"

#### Plugins

* IdeaVim
* IdeaVim-EasyMotion
* Solarized Themes

#### Vim

* [.ideavimrc](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.ideavimrc)

* [Install Intellimacs](https://github.com/MarcoIeni/intellimacs)

Go to `Preferences > Keymap` and change the following:
* Search Everywhere - Ctrl+p
* Project - Ctrl+\

Go to `Preferences > Editor > Vim Emulation` and resolve any keymap conflicts
