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

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# custom
alias python="python3"
alias l="ls -lah"
alias ..="cd .."

# git aliases
alias gs="git status"
alias gc="git commit -m "
alias ga="git add "
alias gp="git push"
alias gpl="git pull"
alias gl="git log --pretty=oneline"

# tmux
alias tmux='tmux -f $HOME/.config/tmux/.tmux.conf'
alias tm='tmux -f $HOME/.config/tmux/.tmux.conf'
alias ta="tmux attach"
alias tl="tmux ls"
alias tk="tmux kill-server"

alias simplefocstudio="python3 /opt/SimpleFOCStudio-main/simpleFOCStudio.py"

# get public ip address
alias myip='curl ifconfig.me'

# ansible playbook
alias ap='ansible-playbook main.yaml'

# rust
alias cr='cargo run'

# alias kubectl='kubectl'

# docker
alias dp='docker ps -a'

alias idea='cd $HOME && nohup /opt/ideaIC-2022.2.2/idea-IC-222.4167.29/bin/idea.sh'

alias sshconf='vim $HOME/.ssh/config'