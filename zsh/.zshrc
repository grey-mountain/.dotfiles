export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

source ~/.zshenv

export N_PREFIX=$HOME/.n

alias cr="cargo run"
alias cb="cargo run --bin"
alias ..="cd .."
alias v="nvim"
alias tx="tmux-sessionizer"
alias wp="wal -a 92 -i"
alias gs="git status"
alias gm="git commit -m"
alias gp="git add . && git commit -m \"message\" && git push" 

addToPathFront() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

addToPathFront $HOME/.n
addToPathFront $HOME/.n/bin/
addToPathFront $HOME/.local/scripts
addToPathFront $HOME/.local/bin
addToPathFront $HOME/.local/.npm-global/bin
addToPathFront $HOME/.tmuxifier/bin
# addToPathFront /opt/apache-maven-3.6.3/bin

fzf-and-run-widget() {
  history | cut -c 8- |  fzf
  zle accept-line
}
zle     -N   fzf-and-run-widget
bindkey '^R' fzf-and-run-widget

eval "$(tmuxifier init -)"
(cat ~/.cache/wal/sequences &)

# Some custom configs
alias wpc="wpc ~/Desktop/lwalpapers/wallpapers/"
# alias kon="xinput enable \"AT Translated Set 2 keyboard\""
# alias koff="xinput disable \"AT Translated Set 2 keyboard\""
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"
# alias rs="rails server"
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

bindkey -s ^f "tmux-sessionizer\n"
