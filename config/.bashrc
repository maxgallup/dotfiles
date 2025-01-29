# personalized PS1 prompt

# PROMPT_COMMAND='((( $? )) && computersaysno & ); __git_ps1 "\W" " \e[01;36m$\e[m "'
# PROMPT_COMMAND='__git_ps1 "\W" " \e[01;36m$\e[m\n"'

PS1='\W \e[01;36m$\e[m '
# PS1='\u \e[01;31m$\e[m '

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

if [ -f "$HOME/.cargo/env" ]; then . "$HOME/.cargo/env"; fi

