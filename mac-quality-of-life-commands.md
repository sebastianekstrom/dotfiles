# MacOS quality of life settings
A list of settings that'll make your life with MacOS a bit smoother. The commands in this list are ment to be pasted into the `Terminal` app one line at the time.

## Save all screenshots to its own folder
Instead of all screenshots ending up cluttering the desktop this command will save all screenshots to a specific folder.

```bash
$ mkdir ~/Documents/Screenshots
$ defaults write com.apple.screencapture location ~/Documents/Screenshots
```

## Remove floating thumbnail after taking a screenshot
This setting is enabled by default and is annoying since it displays the thumbnail for a really long time, and the file isn't saved until the thumbnail disappears.

![image](https://user-images.githubusercontent.com/1921046/141097386-04bbbcf7-57e2-4049-8688-8b654e743b23.gif)

1. Open the screenshot tool with `Cmd + Shift + 5`
2. Press the `Options` button
3. Disable `Show Floating Thumbnail`

## Set a better keyboard repeat rate
MacOS has a delay for the amount of time it takes to repeat a character when you press a key on the keyboard, as well as a delay for how often that key will be repeated while the key is held in. This is especially annoying when adding or deleting a lot of text.

![image](https://screenshot.click/10-23-tog0c-nfvbq.gif)

```bash
$ defaults write -g InitialKeyRepeat -int 10
$ defaults write -g KeyRepeat -int 1
```
This command requires you to log out and in again for it to take effect.

## Hide desktop icons
Clutter on the desktop is ugly and messy, so lets fix that the same way we fix our real life problems; hide them and pretend they don't exist.
This command will visually hide all the icons on your desktop, but they will still be available through the `Finder` app.

```bash
$ defaults write com.apple.finder CreateDesktop false
$ killall Finder
```

## Add empty spaces to the dock
This is a nice way to organize your dock into different categories.

![image](https://i.imgur.com/K0dROXW.png)

```bash
$ defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'
$ killall Dock
```

## Change keyboard shortcut to switch between different windows of the same app
Useful for when you have a Chrome window and Chrome Incognito window open at the same time, and you quickly want to switch between them.

```bash
System Preferences -> Keyboard -> Shortcuts -> Keyboard -> "Move focus to the next window"
Bind to cmd + < (or shortcut of your choice)
```
