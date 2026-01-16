# ZSH Configuration

# Shared environment (Homebrew, NVM, Ruby, paths)
source ~/.config/shell/env.sh

# --- Zsh-specific settings below ---

# History substring search (type partial command, press up/down to find matches)
source /opt/homebrew/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey "^[[A" history-substring-search-up    # Up arrow
bindkey "^[[B" history-substring-search-down  # Down arrow

# fzf fuzzy finder (Ctrl+R for history, Ctrl+T for files, Alt+C for cd)
source <(fzf --zsh)

# Starship prompt
eval "$(starship init zsh)"
