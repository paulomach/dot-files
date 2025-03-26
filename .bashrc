eval "$(starship init bash)"

HISTFILESIZE='5000'
HISTSIZE=$HISTFILESIZE
HISTCONTROL="ignoredups:erasedups"

[[ -f /etc/bash_completion ]] && source /etc/bash_completion

alias bi='vi'
alias cat='bat'
alias ccat='/usr/sbin/cat'
alias df='duf -hide special -hide-fs squashfs'
alias diff='diff -urN'
alias dmesg='journalctl -k -f'
alias du='dust'
alias grep='grep --color=auto -i'
alias jam="juju add-model"
alias jc="juju controllers"
alias jj='juju'
alias jj='juju'
alias jjs='juju switch'
alias jl='juju debug-log'
alias jl='juju debug-log'
alias jm="juju models"
alias js='watch -t -c -n1 juju status --color --relations'
alias js='watch -t -c -n1 juju status --color --relations'
alias k='kubectl'
alias la='ls -a'
alias lh='ls -d .??*'
alias ll='ls -l'
alias ls='exa --group-directories-first'
alias lsd='ls -d */'
alias lxc-ls='lxc list --all-projects'
alias pkill='pkill -ec'
alias please='sudo $(history -p \!\!)'
alias ps='procs'
alias snapcraft='snapcraft --use-lxd'
alias tree='tree -A'
alias v='nvim'
alias vim='nvim'

export VISUAL="nvim"
export EDITOR="nvim"
export BAT_THEME="Monokai Extended Origin"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*" --glob "!{go,venv,.tox}"'

eval "$(zoxide init bash)"

if [[ $USER == "ubuntu" ]]; then
    alias cat='batcat'
    source /usr/share/doc/fzf/examples/key-bindings.bash
else
    source /usr/share/fzf/key-bindings.bash
fi

[[ -d $HOME/.completions ]] && source $HOME/.completions/*.sh

