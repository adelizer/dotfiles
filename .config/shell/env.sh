# Shared shell environment - sourced by both .zshrc and .bash_profile
# This file contains environment variables and settings that work in any shell

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Path additions
export PATH="$HOME/bin:$PATH"

# Python settings
export PIP_REQUIRE_VIRTUALENV=true

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Ruby (chruby)
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.3.0

# Local binaries
. "$HOME/.local/bin/env"

# Docker init (if exists)
[ -f "$HOME/.docker/init-zsh.sh" ] && source "$HOME/.docker/init-zsh.sh"
