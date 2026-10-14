# prostreet-theme

Dark theme for Neovim, Helix, Ghostty, Zed and tmux. It is based on the NFS ProStreet graffiti wallpapers: cracked asphalt, chalk white, one neon lime accent.

## Palette

| Role | Color |
|------|-------|
| Background | `#161819` |
| Text | `#d9dbd6` / `#f4f5f0` |
| Comments (italic) | `#70767a` |
| Keywords, cursor, active marker (accent) | `#b8f02c` |
| Functions, calls, links | `#7fb1c4` |
| Numbers, constants | `#a6c8d6` |
| Strings | `#d9604f` |
| Types | `#f4f5f0` |
| Errors | `#ff4f3d` |

Rules: four hues only (neutrals, steel, lime, red). Lime is the only accent. Italics are used only for comments.

## Install

```sh
./install.sh
```

The script symlinks each file into `~/.config`. It skips files that already exist.

## Activate

| Tool | Setting |
|------|---------|
| Neovim | `vim.cmd.colorscheme("prostreet")` |
| Helix | `theme = "prostreet"` in `config.toml` |
| Ghostty | `theme = prostreet` in `config.ghostty` |
| Zed | `"theme": "Prostreet"` in `settings.json` |
| tmux | `source-file ~/.config/tmux/themes/prostreet.conf` in `~/.tmux.conf` |

## Layout

```
nvim/colors/prostreet.lua
helix/themes/prostreet.toml
ghostty/themes/prostreet
zed/themes/Prostreet.json
tmux/themes/prostreet.conf
```
