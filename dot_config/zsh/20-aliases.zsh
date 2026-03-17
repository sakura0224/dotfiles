# navigation
alias h='cd ~'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias dev='cd ~/dev'
alias ..='cd ..'
alias ...='cd ../..'
alias data='cd /Volumes/Data/'

# config
alias zshconf='nano ~/.zshrc'
alias aliasconf='nano ~/aliases.zsh'

# node
alias with-brew-node='PATH="/opt/homebrew/bin:$PATH"'

lcrestart() {
  local name="$1"
  local plist="$HOME/Library/LaunchAgents/${name}.plist"
  launchctl bootout gui/$(id -u) "$plist" 2>/dev/null
  launchctl bootstrap gui/$(id -u) "$plist"
}
