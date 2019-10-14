#!/bin/bash

# Show "Quit Finder" Menu Item
#Makes possible to see Finder menu item "Quit Finder" with default shortcut Cmd + Q
defaults write com.apple.finder QuitMenuItem -bool true && \
killall Finder

# Disable Auto-Correct
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

#Disable Auto Rearrange Spaces Based on Most Recent Use
defaults write com.apple.dock mru-spaces -bool false && \
killall Dock

#Enable Dock Autohide
defaults write com.apple.dock autohide -bool true && \
killall Dock

#Fully resize your Dock's body. To resize change the 0 value as an integer.
defaults write com.apple.dock tilesize -int 35 && \
killall Dock

#Show Hidden Files
defaults write com.apple.finder AppleShowAllFiles true

# Disable natural scrolling direction
defaults write -g com.apple.swipescrolldirection -bool FALSE

# Set key repeat rate + initial delay
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 10
