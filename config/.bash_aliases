# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# ------
# custom
# ------
alias python="python3"
alias l="ls -lah"
alias ..="cd .."
alias gs="git status"
alias gc="git commit -m "
alias ga="git add "
alias gp="git push"
alias gpl="git pull"
alias gl="git log --pretty=oneline"
alias tmux='tmux -f $HOME/.config/tmux/.tmux.conf'
alias tm='tmux -f $HOME/.config/tmux/.tmux.conf'
alias ta="tmux attach"
alias tl="tmux ls"
alias tk="tmux kill-server"
alias myip='curl ifconfig.me'
alias ap='ansible-playbook main.yaml --ask-vault-pass -K'
alias dp='docker ps -a'
alias sshconf='vim $HOME/.ssh/config'
alias dnf='sudo dnf5'

alias sync-docs='rclone sync --verbose /home/max/Documents protondrive:Documents'

alias nodeman='ssh -i ~/.ssh/id_hwsec mgp310@hwsec nodeman'

alias ds='devbox shell'

alias open='xdg-open'

alias ninja='/opt/binaryninja/binaryninja'
