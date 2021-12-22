#!/bin/bash

# Show "Quit Finder" Menu Item and make it possible to kill Finder using Cmd + Q
defaults write com.apple.finder QuitMenuItem -bool true && \

# Disable Auto-Correct
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

#Disable Auto Rearrange Spaces Based on Most Recent Use
defaults write com.apple.dock mru-spaces -bool false && \

#Enable Dock Autohide
defaults write com.apple.dock autohide -bool true && \

#Fully resize your Dock's body. To resize change the integer value
defaults write com.apple.dock tilesize -int 35 && \

#Disable Bouncing dock icons:
defaults write com.apple.dock no-bouncing -bool True

#Show Hidden Files
defaults write com.apple.finder AppleShowAllFiles true

# Disable natural scrolling direction
defaults write -g com.apple.swipescrolldirection -bool FALSE

# Set key repeat rate + initial delay
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 10

# Remove all programs from dock
defaults write com.apple.dock persistent-apps -array

# Change location where to save screenshots
mkdir -p ~/Downloads/Screenshots
defaults write com.apple.screencapture location ~/Downloads/Screenshots

# Change default folder for new Finder windows
defaults write com.apple.finder NewWindowTargetPath "file:///${HOME}/Downloads/"
defaults write com.apple.finder NewWindowTarget PfLo

# Restart programs, but you still have to log out for all settings to take effect
killall Finder
killall Dock
