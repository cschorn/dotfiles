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

CONFIG_DIR="$HOME/.bash/"

if [ -f "$CONFIG_DIR/git-completion.bash" ]; then
    source "$CONFIG_DIR/git-completion.bash"
fi

if [ -f "$CONFIG_DIR/git-prompt.sh" ]; then
    source "$CONFIG_DIR/git-prompt.sh"
fi

#
# API Tokens etc.
#
SECRETS="$HOME/.bash/secrets.sh"
if [ -f $SECRETS ]; then
    source $SECRETS
fi

export PS1='\W$(__git_ps1 " (%s)")\$ '

eval $(/usr/libexec/path_helper -s)
