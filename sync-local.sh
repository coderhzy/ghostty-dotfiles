#!/bin/bash
# ============================================
# Auto sync: pull remote changes → update local configs
# Runs daily via launchd
# ============================================

set -e

REPO_DIR="$HOME/ghostty-dotfiles"
LOG_FILE="$REPO_DIR/.sync.log"

echo "$(date '+%Y-%m-%d %H:%M:%S') Syncing..." >> "$LOG_FILE"

cd "$REPO_DIR"

# Pull latest changes
git pull --ff-only origin master >> "$LOG_FILE" 2>&1

# Copy configs to local
cp "$REPO_DIR/ghostty/config" ~/.config/ghostty/config
cp "$REPO_DIR/starship/starship.toml" ~/.config/starship.toml

echo "$(date '+%Y-%m-%d %H:%M:%S') Done." >> "$LOG_FILE"

# Keep log file small (last 100 lines)
tail -100 "$LOG_FILE" > "$LOG_FILE.tmp" && mv "$LOG_FILE.tmp" "$LOG_FILE"
