#!/bin/bash

sudo -v

# Set language and text formats
defaults write NSGlobalDomain AppleLanguages -array "en"
defaults write NSGlobalDomain AppleLocale -string "en_US@currency=AUD"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Set the timezone; see `systemsetup -listtimezones` for other values
systemsetup -settimezone "Australia/Sydney" >/dev/null

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true
# Wipe all (default) app icons from the Dock
defaults write com.apple.dock persistent-apps -array ""