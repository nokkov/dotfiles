ZSH_THEME="robbyrussell"

plugins=(git rust direnv z kubectl helm sudo extract colored-man-pages command-not-found copypath copyfile web-search per-directory-history you-should-use )

# export YSU_IGNORED_ALIASES=("ls eza kubectl")

source $ZSH/oh-my-zsh.sh

alias ls="eza --icons"
alias ll="eza -la --icons --git"
alias lt="eza --tree --icons -L 2"
alias lta="eza --tree --icons -L 3 -a"
alias la="eza -a --icons"

alias grep="rg"
alias find="fd"
alias top="btm"
alias df="df -h"
alias du="dust"
alias ps="procs"
# alias sed="sd"
alias reload="exec $SHELL -l"
alias path='echo $PATH | tr ":" "\n"'
alias ports="ss -tulnp"
alias myip="curl -s ifconfig.me"
alias localip="ip route get 1 | awk '{print \$7}'"
alias diskusage="df -h | grep -v tmpfs"
alias cls="clear"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"
alias -- -="cd -"

alias mkdir="mkdir -pv"
alias vnv="nvim ~/.config/nvim/init.lua"

alias kexec="kubectl exec -it"
alias kdebug="kubectl run debug --rm -it --image=busybox -- /bin/sh"

mkcd() { mkdir -p "$1" && cd "$1" }

sudo-command-line() {
    [[ -z $BUFFER ]] && zle up-history
    if [[ $BUFFER == doas\ * ]]; then
        BUFFER="${BUFFER#doas }"
    else
        BUFFER="doas $BUFFER"
    fi
    zle end-of-line
}
zle -N sudo-command-line
bindkey "\e\e" sudo-command-line
