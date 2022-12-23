eval "$(starship init bash)"

HISTFILESIZE='5000'
HISTSIZE=$HISTFILESIZE
HISTCONTROL="ignoredups:erasedups"

[[ -f /etc/bash_completion ]] && source /etc/bash_completion

alias bi='vi'
alias bonzo='echo "Bonzo on $(based-connect -b 28:11:A5:35:B8:18)%"'
alias cat='bat'
alias ccat='/usr/sbin/cat'
alias df='duf -hide special -hide-fs squashfs'
alias diff='diff -urN'
alias dmesg='journalctl -k -f'
alias dos2unix='dos2unix -A'
alias du='dust'
alias feh='feh -.'
alias git='LANG=en_US.UTF-8 git'
alias grep='grep --color=auto -i'
alias ifconfig='ip address show'
alias iotop='sudo iotop -o -P'
alias ipdata='curl ipinfo.io'
alias js='watch -c -n1 juju status --color --relations'
alias jj='juju'
alias la='ls -a'
alias lh='ls -d .??*'
alias jl='juju debug-log'
alias ll='ls -l'
alias ls='exa --group-directories-first'
alias lsd='ls -d */'
alias lpass-login='lpass login paulo.machado@canonical.com'
alias lxc-ls='lxc list --all-projects'
alias mkpass='expect_mkpasswd'
alias octave='clear; octave --no-gui --quiet'
alias pkill='pkill -ec'
alias please='sudo $(history -p \!\!)'
alias ps='procs'
alias serial-out='screen /dev/ttyUSB0 9600'
alias tree='tree -A'
alias vi='vi -p'
alias xclip='xclip -rmlastnl -sel clip'
alias sshtunnel='ssh -CNL'
alias k='microk8s.kubectl'
alias v='nvim'
alias vim='nvim'
alias snapcraft='snapcraft --use-lxd'

PATH="/home/paulo/bin:/usr/local/sbin:/usr/sbin:/sbin:${PATH}"

export VISUAL="nvim"
export EDITOR="nvim"
export BAT_THEME="Monokai Extended Origin"
export WORKON_HOME=$HOME/.virtualenvs
export LPASS_AGENT_TIMEOUT=0
#export DOCKER_HOST="tcp://pi:2375"
export GPGKEY="4FB8E7A63868CF98"


source /usr/share/fzf/key-bindings.bash

