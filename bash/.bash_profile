export PS1="\W\$ "
shopt -s autocd

#
# Paths
#
COMPOSER_BIN="$HOME/.composer/vendor/bin"
if [ -d $COMPOSER_BIN ]; then
    PATH="$PATH:$COMPOSER_BIN"
fi

export PATH

#
# Aliases
#

alias ll='ls -lAG'
alias la='la -A'
alias projects='cd ~/Projekte'

#
# API Tokens etc.
#
SECRETS="$HOME/.bash/secrets.sh"
if [ -f $SECRETS ]; then
    source $SECRETS
fi

eval $(/usr/libexec/path_helper -s)
