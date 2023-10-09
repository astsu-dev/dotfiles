# Greeting
set -gx fish_greeting ''

# Aliases
alias to=cd
alias lr=clear
alias ports="netstat -an | grep LISTEN"
alias upgrade="brew list --formulae | xargs brew upgrade && brew list --cask | xargs brew upgrade --cask"

# Pyenv init
pyenv init - | source

# Nvm init
nvm use 18.16.0 > /dev/null

# zoxide
zoxide init fish | source
