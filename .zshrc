export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=robbyrussell
plugins=(git)

export PATH="/Users/alancunin/scripts:$PATH"

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# bun completions
[ -s "/Users/alancunin/.bun/_bun" ] && source "/Users/alancunin/.bun/_bun"

alias ls="eza"
alias c="clear"
alias curl_status='curl -s -w "\nStatus: %{http_code}\n"'
alias ccw="claude --dangerously-skip-permissions --worktree"
alias cc="claude --dangerously-skip-permissions"
alias ccc="claude --dangerously-skip-permissions -c"
alias cc_term='osascript -e "tell application \"Terminal\"" \
  -e "activate" \
  -e "tell application \"System Events\" to keystroke \"t\" using command down" \
  -e "do script \"cd $PWD && clear && cc\" in front window" \
  -e "end tell"'
alias aws-login='source aws_login'

# Android Studio
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/alancunin/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

#[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"

#if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
#  eval "$(oh-my-posh init zsh --config ~/ZSHThemes.json)"
#fi

export TERM=xterm-256color

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alancunin/Repositories/Epitech/EIP/benchmarks/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/alancunin/Repositories/Epitech/EIP/benchmarks/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alancunin/Repositories/Epitech/EIP/benchmarks/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/alancunin/Repositories/Epitech/EIP/benchmarks/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="$HOME/bin:$PATH"
