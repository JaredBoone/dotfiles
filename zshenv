# ~/.zshenv
# This file is loaded for ALL zsh shells (interactive and non-interactive)

export NVM_DIR="$HOME/.nvm"

# PATH setup (before nvm so nvm can prepend)
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
export PATH=$PATH:$HOME/bin.local:$HOME/bin:/usr/local/bin:$HOME/.local/bin
export PATH="$PATH:$HOME/.cache/lm-studio/bin"
export PATH="$PATH:$HOME/.claude/local"

# Personal
# export PATH="$PATH:/Applications/Siril.app/Contents/MacOS"

# Professional 
# export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
# export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH

# For non-interactive shells, load nvm fully to avoid wrapper function issues
if [[ ! -o interactive ]]; then
  # Load nvm completely (not lazy)
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  # Activate default node
  [ -s "$NVM_DIR/nvm.sh" ] && nvm use default >/dev/null 2>&1
fi
