# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

#shows dots if waiting for autocompletion, ...
COMPLETION_WAITING_DOTS="true"

# DISABLE AUTOCORRECTION
DISABLE_CORRECTION="true"

export TERM="xterm-256color"

#########################################antigen stuff####################################
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k

source /usr/share/zsh-antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

#specify bundles
antigen bundles <<EOBUNDLES

# Helper for extracting different types of archives
extract

EOBUNDLES
# TODO find way to add plugin based on version
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply
antigen theme bhilburn/powerlevel9k powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs virtualenv)
if [ -n "$SSH_CLIENT" ]; then
    POWERLEVEL9K_CONTEXT_TEMPLATE="@%m"
fi
# shorten all ancestor dir names
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

antigen apply

export SHELL=$(which zsh)

# set defualt editor 
export VISUAL=vim
export EDITOR="$VISUAL"

# enable Glob Operators. Read more at - http://zsh.sourceforge.net/Doc/Release/Expansion.html#Glob-Operators
setopt extendedglob

#use history per tab and just merge after exit that shell
setopt APPEND_HISTORY
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed
source  ~/powerlevel9k/powerlevel9k.zsh-theme

#kerberos config
export KRB5_CONFIG="$HOME/.krb5.conf"



