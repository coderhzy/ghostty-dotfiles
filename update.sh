#!/bin/bash
# ============================================
# coderhzy dotfiles - Sync local configs to repo
# Run this after modifying local configs
# ============================================

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "📥 Syncing local configs to repo..."

# --- Copy configs ---
cp ~/.config/ghostty/config "$SCRIPT_DIR/ghostty/config"
cp ~/.config/starship.toml "$SCRIPT_DIR/starship/starship.toml"

echo "✅ Configs synced! Now commit and push:"
echo "   cd $SCRIPT_DIR"
echo "   git add -A && git commit -m 'update: sync configs'"
echo "   git push"
