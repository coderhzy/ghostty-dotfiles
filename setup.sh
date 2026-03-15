#!/bin/bash
# ============================================
# coderhzy dotfiles - One-click setup script
# Ghostty + Starship + Claude Code 开发环境
# ============================================

set -e

echo "🚀 Starting dotfiles setup..."

# --- Install Homebrew if not present ---
if ! command -v brew &> /dev/null; then
  echo "📦 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# --- Install packages ---
echo "📦 Installing packages..."
brew install --cask ghostty 2>/dev/null || echo "✅ Ghostty already installed"
brew install --cask font-maple-mono-nf-cn 2>/dev/null || echo "✅ Font already installed"
brew install starship 2>/dev/null || echo "✅ Starship already installed"
brew install fastfetch 2>/dev/null || echo "✅ fastfetch already installed"
brew install btop 2>/dev/null || echo "✅ btop already installed"

# --- Get script directory ---
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# --- Link Ghostty config ---
echo "🔗 Setting up Ghostty config..."
mkdir -p ~/.config/ghostty
cp "$SCRIPT_DIR/ghostty/config" ~/.config/ghostty/config

# --- Link Starship config ---
echo "🔗 Setting up Starship config..."
mkdir -p ~/.config
cp "$SCRIPT_DIR/starship/starship.toml" ~/.config/starship.toml

# --- Add Starship to .zshrc if not present ---
if ! grep -q 'starship init zsh' ~/.zshrc 2>/dev/null; then
  echo "🔗 Adding Starship to .zshrc..."
  echo '' >> ~/.zshrc
  echo '# Starship prompt' >> ~/.zshrc
  echo 'eval "$(starship init zsh)"' >> ~/.zshrc
fi

echo ""
echo "✅ Setup complete! Next steps:"
echo "   1. Restart your terminal (Cmd + Q → reopen Ghostty)"
echo "   2. Cmd + D to split screen"
echo "   3. Type 'claude' to start coding!"
echo ""
