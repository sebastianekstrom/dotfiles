# Zed Configuration

## Setup

```bash
# Create the Zed config directories
mkdir -p ~/.config/zed/themes

# Symlink settings and keybindings
ln -sf $(pwd)/settings.json ~/.config/zed/settings.json
ln -sf $(pwd)/keymap.json ~/.config/zed/keymap.json

# Symlink theme
ln -sf $(pwd)/themes/atom-material-theme.json ~/.config/zed/themes/atom-material-theme.json
```

Run the commands from the `dotfiles/zed/` directory.
