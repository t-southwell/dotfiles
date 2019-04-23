#!/usr/bin/zsh

alias q='exit 0'
alias d='clear'

alias la='ls -Ah'
alias ll='ls -lAh'

alias mkx='chmod +x'
alias mkdir='mkdir -pv'
alias grep='grep --color=auto'
alias debug="set -o nounset; set -o xtrace"

alias dh='dirs -v'
alias du='du -kh'
alias df='df -kTh'

if hash nvim >/dev/null 2>&1; then
    alias vim='nvim'
    alias v='nvim'
    alias sv='sudo nvim'
else
    alias v='vim'
    alias sv='sudo vim'
fi

alias gp='git pull'
alias gf='git fetch'
alias gc='git clone'
alias gs='git stash'
alias gb='git branch'
alias gm='git merge'
alias gch='git checkout'
alias gcm='git commit -m'
alias glg='git log --stat'
alias gpo='git push origin HEAD'
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'

alias pls='pacman -Ql'        # list files
alias pup='sudo pacman -Syyu' # update
alias pin='sudo pacman -S'    # install
alias pun='sudo pacman -Rs'   # remove
alias pcc='sudo pacman -Scc'  # clear cache
alias prm='sudo pacman -Rnsc' # really remove, configs and all
alias pinfo='sudo pacman -Si' # get info about a package

alias pkg='makepkg --printsrcinfo > .SRCINFO && makepkg -fsrc'
alias spkg='makepkg --printsrcinfo > .SRCINFO && makepkg -fsrc --sign'
alias mk='make && make clean'
alias smk='sudo make clean install && make clean'
alias ssmk='sudo make clean install && make clean && rm -iv config.h'

# aliases inside tmux session
if [[ $TERM == *tmux* ]]; then
    alias :sp='tmux split-window'
    alias :vs='tmux split-window -h'
fi

alias rcp='rsync -v --progress'
alias rmv='rcp --remove-source-files'

alias calc='python -qi -c "from math import *"'
alias brok='sudo find . -type l -! -exec test -e {} \; -print'
alias timer='time read -p "Press enter to stop"'

# shellcheck disable=2142
alias xp='xprop | awk -F\"'" '/CLASS/ {printf \"NAME = %s\nCLASS = %s\n\", \$2, \$4}'"
alias get='curl --continue-at - --location --progress-bar --remote-name --remote-time'


alias music='cd /mnt/2tb/Music; ranger' # go to my music folder and open ranger
alias exhdd='cd /home/Transcend/.t-stuff/; ranger'
alias gdrive='cd ~/grive && grive && cd -' # sync google drive
alias epq='cd ~/grive/epq/epq'
alias textemplate='cp ~/grive/documents/template.tex ./' # Copy LaTeX template to current folder
alias tor='cd ~/tor/ && ./start-tor-browser.desktop && cd -; exit'
alias downloads='cd /mnt/2tb/Downloads'
alias torrents='cd /mnt/1tb/torrents'
alias vpn='cd /etc/openvpn; sudo openvpn uk-lon.prod.surfshark.com_tcp.ovpn; bg; disown;'
