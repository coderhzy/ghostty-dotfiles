# coderhzy dotfiles

Ghostty + Starship + Claude Code development environment.

## Quick Setup (New Machine)

```bash
git clone https://github.com/coderhzy/dotfiles.git ~/dotfiles
cd ~/dotfiles
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

## Update Configs

After modifying local configs:

```bash
cd ~/dotfiles
./update.sh
git add -A && git commit -m "update: sync configs"
git push
```
