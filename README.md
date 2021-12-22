# How to set up a new Mac

This is how I like to set up my Mac!

## SSH key

[Generate a SSH key](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) for your new computer and [add it on Github](https://github.com/settings/keys). Now you can clone this repo!

## Auto config

    ./auto-config.sh

You have to log out and log in again for all settings to take effect.

### Manual settings

Night Shift has to be enabled manually.

Change DNS Server to [1.1.1.1](https://1.1.1.1/dns).

## Install programs

- [iTerm2](https://iterm2.com) - much more powerful than the standard Terminal
- [VSCode](https://code.visualstudio.com/Download) - moste versatile code IDE
- [Homebrew](https://brew.sh)
- [1Password](https://1password.com/downloads/mac/)
- [Firefox Developer Edition](https://www.mozilla.org/sv-SE/firefox/developer/) - best browser
- [Brave Browser](https://brave.com/download/) - second best browser as fallback
- [Alfred](https://www.alfredapp.com)
- [Anki](https://apps.ankiweb.net/)
- [Teams](https://www.microsoft.com/sv-se/microsoft-teams/download-app#desktopAppDownloadregion)

## From App Store

- BetterSnapTool (remember to add keyboard shortcuts)
- Slack
- Amphetamine

## Other tools

### Zsh

- Install the latest version and set as current user's default shell:

```sh
brew install zsh && \
sudo sh -c 'echo $(brew --prefix)/bin/zsh >> /etc/shells' && \
chsh -s $(brew --prefix)/bin/zsh
```

- Run these two commands in your terminal to add Homebrew to your PATH:

```sh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/gustav/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

- Install oh-my-zsh:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Install plugins:

**autojump**

    brew install autojump

**[bat](https://github.com/sharkdp/bat)**

    brew install bat


## Backup

Some files can be good to backup from your old computer.

- `~/.zshrc`
- [~/.gitconfig](https://gist.github.com/Sundin/7dfd300be8d70af08d73bc4545ccbe9e)

## Firefox Setup

- [about:preferences#privacy](about:preferences#privacy)
  - Strict tracking protection
  - Always send 'Do not track' request
  - Delete cookies when Firefox is closed
  - Don't save passwords
  - Block all notifications

- [about:preferences#search](about:preferences#search)
  - Use DuckDuckGo as the default and disable the ones that you don't need. 

- [about:preferences#home](about:preferences#home)
  - Disable everything to get a clean slate without distractions every time you open a new tab.

### Extensions

- [1Password extension](https://addons.mozilla.org/sv-SE/firefox/addon/1password-x-password-manager/)
- [Google container extension](https://addons.mozilla.org/sv-SE/firefox/addon/google-container/?src=search)
- [Facebook container extension](https://addons.mozilla.org/sv-SE/firefox/addon/facebook-container/?src=search)

## VSCode Setup

- Cmd + Shift + P => `Shell Command: Install 'code' command in PATH`

- Cmd + Shift + P => `Preferences: Open Settings (JSON)`

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
    "editor.tabSize": 2,
}
```

### Extensions

- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Color Picker](https://marketplace.visualstudio.com/items?itemName=anseki.vscode-color)

## Development

- [nvm](https://www.linode.com/docs/guides/how-to-install-use-node-version-manager-nvm/)

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
```

## References

https://github.com/herrbischoff/awesome-macos-command-line

https://www.e-tinkers.com/2018/01/what-is-googlesoftwareupdate-app-on-my-mac/
