# How to set up a new Mac

This is how I like to set up my Mac! 

## Auto config

    ./auto-config.sh

You have to log out and log in again for all settings to take effect.

## Install programs

* [iTerm2](https://iterm2.com)
* [VSCode](https://code.visualstudio.com/Download)
* [Homebrew](https://brew.sh)
* [1Password](https://1password.com/downloads/mac/)
* [Firefox Developer Edition](https://www.mozilla.org/sv-SE/firefox/developer/)
* [Alfred](https://www.alfredapp.com)

## From App Store
* BetterSnapTool (remember to add keyboard shortcuts)
* Slack

## Other tools

### Zsh
* Install the latest version and set as current user's default shell:

```    
brew install zsh && \
sudo sh -c 'echo $(brew --prefix)/bin/zsh >> /etc/shells' && \
chsh -s $(brew --prefix)/bin/zsh
```


* Install oh-my-zsh:

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Install plugins:

**thefuck**

    brew install thefuck

**autojump**

    brew install autojump

**[bat](https://github.com/sharkdp/bat)**
    
    brew install bat

* Update `~/.zshrc`

* Open a new shell for changes to take effect.

### Git
* Update `~/.gitconfig`

* Generate a new [ssh key](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

## Backup
Some files can be good to backup from your old computer.

    ~/.zshrc
    ~/.gitconfig

## Firefox Setup
* [about:preferences#privacy](about:preferences#privacy):
    * Strict tracking protection
    * Always send 'Do not track' request
    * Delete cookies when Firefox is closed
    * Don't save passwords
    * Block all notifications

### Extensions
* [1Password extension](https://addons.mozilla.org/sv-SE/firefox/addon/1password-x-password-manager/)
* [Google container extension](https://addons.mozilla.org/sv-SE/firefox/addon/google-container/?src=search)
* [Facebook container extension](https://addons.mozilla.org/sv-SE/firefox/addon/facebook-container/?src=search)

## VSCode Setup

* Cmd + Shift + P => `Shell Command: Install 'code' command in PATH`

* Cmd + Shift + P => `Preferences: Open Settings (JSON)`

I use the following settings:

```
{
    // Editor:
    "explorer.confirmDragAndDrop": false,
    "explorer.confirmDelete": false,
    "breadcrumbs.enabled": true,
    "editor.formatOnSave": true,

    // Disable normal javascript formatting in order not to interfere with ESLint:
    "javascript.format.enable": false,

    // ESLint:
    "eslint.enable": true,
    "eslint.autoFixOnSave": true,

    // Stylelint extension:
    "css.validate": false,
    "less.validate": false,
    "scss.validate": false,

    // Other:
    "window.zoomLevel": 0,
    "editor.suggestSelection": "first",
    "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",
}
```

### Extensions
* GitLens
* indent-rainbow
* ESLint
* Color Picker

## References

https://github.com/herrbischoff/awesome-macos-command-line

https://www.e-tinkers.com/2018/01/what-is-googlesoftwareupdate-app-on-my-mac/
