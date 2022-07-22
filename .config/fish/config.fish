# Greeting
set -gx fish_greeting 'Hi, bro! You\'re the best!'

# Aliases
alias to=cd
alias lr=clear
alias lock="swaylock -c 000000"

# Pyenv init
status is-login; and pyenv init --path | source
pyenv init - | source

# Nvm init
nvm use 16.15.0 > /dev/null
