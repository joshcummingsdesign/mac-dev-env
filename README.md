# Mac OS X Development Environment

### Xcode

    $ xcode-select --install

### Docker Desktop

https://hub.docker.com/editions/community/docker-ce-desktop-mac

### Homebrew

https://brew.sh

### iTerm2

https://www.iterm2.com

### Git

Update Mac Git

    $ brew install git

Configure Git settings

    $ git config --global user.name "myusername"
    $ git config --global user.email "email@example.com"
    $ git config --global push.default simple
    $ git config --global core.editor "vim"
    $ git config --global core.ignorecase false

### SSH

Install ssh-copy-id

    $ brew install ssh-copy-id

Generate a key pair

    $ ssh-keygen -t rsa -b 4096 -C "email@example.com"

Add the following to your `~/.ssh/config`

```sh
Host *
    UseKeychain yes
```

### Zsh

Update Mac Zsh

    $ brew install zsh

Switch to Zsh

    $ chsh -s /bin/zsh

zshrc

* [dotfiles/.zshrc](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.zshrc)

### Oh My Zsh

https://github.com/robbyrussell/oh-my-zsh

### Zsh Theme

#### Color Scheme

* [One Dark](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/themes)

In iTerm2 go to `Preferences > Profiles > Colors` and add your theme under `Color Presets`

#### Powerline

[Download the Fira Mono font family](https://github.com/powerline/fonts)

In iTerm2 go to `Preferences > Profiles > Text` and change the font to Fira Mono

[Install the Powerlevel9k theme](https://github.com/Powerlevel9k/powerlevel9k/wiki/Install-Instructions#option-2-install-for-oh-my-zsh)

### Zsh Plugins

* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

### htop

    $ brew install htop

### ripgrep

    $ brew install ripgrep

### sed

    $ brew install gnu-sed

### Vim

Update Mac Vim

    $ brew install vim
vimrc

* [~/.vimrc](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.vimrc)

Install vim-plug

https://github.com/junegunn/vim-plug

Run `:PlugInstall` in Vim to fetch and install all plugins

### tmux

Install tmux

    $ brew install tmux

tmux config

* [~/.tmux.conf](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.tmux.conf)

Install tpm

https://github.com/tmux-plugins/tpm

Press `prefix + I` in a tmux session to fetch and install all plugins

### Node.js

Install nvm

https://github.com/creationix/nvm

Install a version of Node.js

    $ nvm install 12.8.0

Set a default Node.js version

    $ nvm alias default 12.8.0

### Visual Studio Code

https://code.visualstudio.com

#### Font

* [Dank Mono](https://dank.sh)

#### Settings

* [dotfiles/.vscode/settings.json](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.vscode/settings.json)

#### Keybindings

* [dotfiles/.vscode/keybindings.json](https://github.com/joshcummingsdesign/mac-dev-env/tree/master/dotfiles/.vscode/keybindings.json)

#### Extensions

* advanced-new-file
* change-case
* Code Spell Checker
* Debugger for Chrome
* Docker
* EditorConfig for VS Code
* ES7 React/Redux/GraphQL/React-Native snippets
* Go to Next/Previous Member
* GraphQL for VSCode
* One Dark Pro
* Prettier - Code formatter
* Rewrap
* Vim
* VS Code CSS Comments
* vscode-styled-components
* vscode-viml-syntax

---

## Resources

### Homebrew Commands

* `brew search [package-name]` - Search for a package
* `brew install [package-name]` - Install a package
* `brew uninstall [package-name]` - Uninstall a package
* `brew list` - Show all installed packages
* `brew list --versions [package-name]` - Show version of an installed package
* `brew list --versions` - Show versions of all installed packages
* `brew home [package-name]` - Open homepage for package
* `brew unlink [package-name]` - Unlink a package
* `brew link [package-name]` - Link a package
* `brew switch [package-name] [version]` - Switch versions of a package
* `brew info [package-name]` - List versions, caveats, etc.
* `brew cleanup [package-name]` - Remove old versions of a package
* `brew update` - Update Homebrew
* `brew outdated` - Show packages that can be upgraded
* `brew upgrade [package-name]` - Upgrade a package
* `brew doctor` - Show warnings for troubleshooting purposes
