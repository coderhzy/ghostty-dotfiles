# coderhzy dotfiles

Ghostty + Starship + Claude Code development environment.

## Quick Setup (New Machine)

```bash
git clone https://github.com/coderhzy/ghostty-dotfiles.git ~/ghostty-dotfiles
cd ~/ghostty-dotfiles
chmod +x setup.sh
./setup.sh
```

## What's Included

| Tool | Config | Description |
|------|--------|-------------|
| Ghostty | `ghostty/config` | Catppuccin Mocha theme, split panes, GPU accelerated |
| Starship | `starship/starship.toml` | Rainbow powerline prompt |

## Key Shortcuts

| Shortcut | Action |
|----------|--------|
| `Cmd + D` | Split right |
| `Cmd + Shift + Enter` | Zoom current pane |
| `Cmd + W` | Close pane |
| `Cmd + T` | New tab |
| `Cmd + Shift + T` | Rename tab |
| `Cmd + Shift + ,` | Reload config |

## Auto Sync

GitHub Action runs daily at 16:00 (Beijing time) to check for upstream [BruceBlue config](https://github.com/BruceLanLan/bruceblue-ghostty-config) updates. Changes are saved to `ghostty/upstream-bruceblue.config` for review.

## Update Configs

After modifying local configs:

```bash
cd ~/ghostty-dotfiles
./update.sh
git add -A && git commit -m "update: sync configs"
git push
```
