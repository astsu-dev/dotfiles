# Greeting
set -gx fish_greeting ''

# Aliases
alias to=cd
alias lr=clear
alias lock="swaylock -c 000000"

# Pyenv init
status is-login; and pyenv init --path | source
pyenv init - | source

# Nvm init
nvm use 18.13.0 > /dev/null
