# How to set up a new Mac

This is how I like to set up my Mac!

## SSH key

[Generate a SSH key](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) for your new computer and [add it on Github](https://github.com/settings/keys). Now you can clone this repo!

## Auto config
I have written a script to configure many system settings the way I want them.

Just run it like this:

    ./auto-config.sh

You have to log out and log in again for all settings to take effect.

### Manual settings

- Night Shift has to be enabled manually.

- Change DNS Server to [1.1.1.1](https://developers.cloudflare.com/1.1.1.1/setup-1.1.1.1/macos).

- [Sync Desktop and Documents to iCloud](https://support.apple.com/en-us/HT206985).

## Install programs

- [iTerm2](https://iterm2.com) - much more powerful than the standard Terminal
  - Follow [this guide](https://danicfilip.com/2018/how_to_use_alt_arrows_to_navigate_between_words_in_iterm2/) to set up keyboard shortcuts for navigating between words.
- [VSCode](https://code.visualstudio.com/Download) - moste versatile code editor
- [Homebrew](https://brew.sh)
- [1Password](https://1password.com/downloads/mac/)
- [Firefox Developer Edition](https://www.mozilla.org/sv-SE/firefox/developer/) - best browser
- [Brave Browser](https://brave.com/download/) - second best browser as fallback
- [Anki](https://apps.ankiweb.net/)
- [Mullvad VPN](https://mullvad.net/sv/)

## From App Store

- BetterSnapTool (remember to add keyboard shortcuts)
- Amphetamine

## Other tools

### Zsh

- Run these two commands in your terminal to add Homebrew to your PATH:

```sh
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/gustav/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

- Install the latest version and set as current user's default shell:

```sh
brew install zsh && \
sudo sh -c 'echo $(brew --prefix)/bin/zsh >> /etc/shells' && \
chsh -s $(brew --prefix)/bin/zsh
```

- Install oh-my-zsh:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Install plugins:

**[autojump](https://github.com/wting/autojump)**

    brew install autojump

**[bat](https://github.com/sharkdp/bat)**

    brew install bat


## Backup

Some files can be good to backup from your old computer.

- [~/.zshrc](.zshrc)
- [~/.gitconfig](.gitconfig)

## Firefox Setup

- [Import bookmarks from your old computer](https://support.mozilla.org/en-US/kb/export-firefox-bookmarks-to-backup-or-transfer)

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

- [Enable DNS over HTTPS](https://developers.cloudflare.com/1.1.1.1/encrypted-dns/dns-over-https/encrypted-dns-browsers)

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
    "window.zoomLevel": 0.8,
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
- [EditorConfig for VS Code](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)

## Development

- [nvm](https://www.linode.com/docs/guides/how-to-install-use-node-version-manager-nvm/)

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
```

- [Docker](https://docs.docker.com/desktop/mac/install/)

## References

https://github.com/herrbischoff/awesome-macos-command-line

https://www.e-tinkers.com/2018/01/what-is-googlesoftwareupdate-app-on-my-mac/
