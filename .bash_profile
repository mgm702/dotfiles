source ~/.git-prompt.sh
export PATH=/Applications/MAMP/bin/php/php5.6.2/bin:~/.composer/vendor/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# If not running interactively, do not do anything
# [[ $- != *i* ]] && return
# [[ -z "$TMUX" ]] && exec tmux
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\[\033[38;5;141m\]\W\[$(tput sgr0)\]\$(__git_ps1) 🌎  "
alias vi=vim
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

alias sbl='open -a "Sublime Text"'
alias path='echo $PATH | tr -s ":" "\n"'

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'


# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

alias git='hub'

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi
