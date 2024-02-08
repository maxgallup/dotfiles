# personalized PS1 prompt

# PROMPT_COMMAND='((( $? )) && computersaysno & ); __git_ps1 "\W" " \e[01;36m$\e[m "'
# PROMPT_COMMAND='__git_ps1 "\W" " \e[01;36m$\e[m\n"'

PS1='\u \e[01;31m$\e[m '



# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# Alias definitions in bash_aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

[ -f "/home/max/.ghcup/env" ] && source "/home/max/.ghcup/env" # ghcup-env


[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


if [ -f "$HOME/.cargo/env" ]; then . "$HOME/.cargo/env"; fi

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# # The next line enables shell command completion for gcloud.
if [ -f '/home/max/Desktop/google-cloud-sdk/completion.bash.inc' ]; then . '/home/max/Desktop/google-cloud-sdk/completion.bash.inc'; fi


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/max/Desktop/google-cloud-sdk/path.bash.inc' ]; then . '/home/max/Desktop/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/max/Desktop/google-cloud-sdk/completion.bash.inc' ]; then . '/home/max/Desktop/google-cloud-sdk/completion.bash.inc'; fi

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin

