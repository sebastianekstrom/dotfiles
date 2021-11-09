### Save all screenshots to a specific folder
```bash
mkdir ~/Documents/Screenshots
defaults write com.apple.screencapture location ~/Documents/Screenshots
```

### Set a better keyboard repeat rate
```bash
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1
```

### Hide desktop icons
```bash
defaults write com.apple.finder CreateDesktop false
killall Finder
```

### Add empty spaces to the dock for organization

```bash
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
killall Dock
```
