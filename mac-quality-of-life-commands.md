### Save all screenshots to a specific folder
Instead of all screenshots ending up cluttering the Desktop, this command will save all screenshots to a specific folder.

```bash
mkdir ~/Documents/Screenshots
defaults write com.apple.screencapture location ~/Documents/Screenshots
```

### Remove floating thumbnail after taking a screenshot
This setting is enabled by default and is annoying since it displays the thumbnail for a really long time, and the file isn't saved until the thumbnail dissappears.

1. Open the screenshot tool with `Cmd + Shift + 5`
2. Press the `Options` button
3. Disable `Show Floating Thumbnail`

### Set a better keyboard repeat rate
MacOS has a delay for the amount of time it takes to repeat a character when you press a key on the keyboard, as well as a delay for how often that key will be repeated while the key is held in. This is especially annoying when deleting a lot of text.

```bash
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1
```
This command requires you to log out and in again for it to take effect.

### Hide desktop icons
Clutter on the desktop is ugly, this command removes it so the only way to find the items on your desktop is through the Finder.
```bash
defaults write com.apple.finder CreateDesktop false
killall Finder
```

### Add empty spaces to the dock for organization
This is a nice way to organize your dock.

![image](https://i.imgur.com/K0dROXW.png)

```bash
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
killall Dock
```

### Change keyboard shortcut to switch between different windows of the same app
Useful for when you have a Chrome window and Chrome Incognito window open at the same time.

```bash
System Preferences -> Keyboard -> Shortcuts -> Keyboard -> "Move focus to the next window"
Bind to cmd + <
```
