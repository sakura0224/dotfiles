# Homebrew completions path (if exists)
[[ -d /opt/homebrew/share/zsh-completions ]] && FPATH=/opt/homebrew/share/zsh-completions:$FPATH

# Java
[[ -d /opt/homebrew/opt/openjdk@21/bin ]] && export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"

# Editor
export EDITOR=nvim
export VISUAL=nvim
