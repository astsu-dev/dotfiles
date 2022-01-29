# Greeting
set -g -x fish_greeting 'Hi, bro! You\'re the best!'

# Aliases
alias to=cd
alias lr=clear
alias v=nvim
alias vim=nvim
alias oldvim="\vim"
alias ccat=pygmentize

# Pyenv init
status is-login; and pyenv init --path | source
pyenv init - | source

# Nvm init
nvm use 16.13.1 > /dev/null
