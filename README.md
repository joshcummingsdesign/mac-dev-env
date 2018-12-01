# Mac OS X Development Environment

### Xcode

    $ xcode-select --install

### Docker CE

https://www.docker.com/community-edition/

### Homebrew

https://brew.sh/

### iTerm2

https://www.iterm2.com/

### Zsh

Update Mac Zsh

    $ brew install zsh

Switch to Zsh

    $ chsh -s /bin/zsh

### Oh My Zsh

https://github.com/robbyrussell/oh-my-zsh/

Set your default user

```sh
DEFAULT_USER=myusername
```

### Zsh Theme

#### Colors

Set your prefered color scheme

##### Recommended Color Schemes

* [One Dark](https://github.com/nathanbuchar/atom-one-dark-terminal/)
* [Night Owl](https://github.com/joshcummingsdesign/mac-dev-env/blob/master/themes)

In iTerm2 go to `Preferences > Profiles > Colors` and add your theme under `Color Presets`

#### Powerline

[Download the Fira Mono font family](https://github.com/powerline/fonts/)

In iTerm2 go to `Preferences > Profiles > Text` and change the font to Fira Mono

Change the theme in your `.zshrc` to agnoster

```sh
ZSH_THEME="agnoster"
```

### Zsh Plugins

##### Recommended Plugins

* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/)

Add plugins to your `.zshrc`

```sh
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
```

### Zsh Aliases

```sh
# Remove all .DS_Store files in a directory
alias dstroy="find . -name '.DS_Store' -type f -delete"
```

### Git

Update Mac Git

    $ brew install git

Configure Git settings

    $ git config --global user.name "myusername"
    $ git config --global user.email "email@example.com"
    $ git config --global push.default simple
    $ git config --global core.editor "nano"

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

### Node.js

Install nvm

https://github.com/creationix/nvm/

Install a version of Node.js

    $ nvm install 11.13.0

Set a default Node.js version

    $ nvm alias default 11.13.0

### Visual Studio Code

https://code.visualstudio.com/

#### Themes

Install your desired theme and then press `⌘K` then `⌘T` to switch themes

##### Recommended Themes

* One Dark Pro
* Night Owl

##### Recommended Font

* [Dank Mono](https://dank.sh/)

#### Prettier

##### Recommended settings

```json
{
    "[javascript]": {
        "editor.formatOnSave": true
    },
    "[javascriptreact]": {
        "editor.formatOnSave": true
    },
    "[typescript]": {
        "editor.formatOnSave": true
    },
    "[typescriptreact]": {
        "editor.formatOnSave": true
    },
    "prettier.singleQuote": true,
    "prettier.jsxBracketSameLine": true,
    "prettier.jsxSingleQuote": true,
    "prettier.printWidth": 100,
}
```

#### Code Spell Checker

##### Recommended settings

```json
{
    "cSpell.enabledLanguageIds": [
        "markdown",
        "plaintext",
        "text",
        "yaml",
        "yml"
    ]
}
```

#### Other Helpful Extensions

* change-case
* Docker
* EditorConfig for VS Code
* Jekyll Snippets
* Jekyll Syntax Support
* Jest
* VS Code CSS Comments
* vscode-styled-components

---

## Resources

### Homebrew Commands

* `brew cask install [app-name]` - Install a Mac OS X app
* `brew cask uninstall [app-name]` - Uninstall a Mac OS X app
* `brew cask list` - Show all apps installed with Hombrew Cask
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
