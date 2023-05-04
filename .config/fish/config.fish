if status is-interactive
    # Commands to run in interactive sessions can go here
end

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

pyenv init - | source

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias vi="nvim"
alias kssh="kitty +kitten ssh"
alias vite="pnpm create vite"
