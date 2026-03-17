# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d "$PYENV_ROOT/bin" ]] && export PATH="$PYENV_ROOT/bin:$PATH"
command -v pyenv >/dev/null 2>&1 && eval "$(pyenv init -)"

# fnm
command -v fnm >/dev/null 2>&1 && eval "$(fnm env --use-on-cd --shell zsh)"

# uv completion (prefer static files)
[[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/uv-completion.zsh" ]] && source "${XDG_CACHE_HOME:-$HOME/.cache}/uv-completion.zsh"
[[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/uvx-completion.zsh" ]] && source "${XDG_CACHE_HOME:-$HOME/.cache}/uvx-completion.zsh"

# zoxide (lazy load version)
export _ZO_EXCLUDE_DIRS="/tmp:/var:/proc:/sys:*/node_modules/*:*/.git/*"
eval "$(zoxide init zsh)"
