# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH:$HOME/.npm/bin"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export GOPATH=$HOME/go
export NODE_PATH=$HOME/.npm/lib/node_modules

# Disable gnome-ssh-askpass
[ -n "$SSH_CONNECTION" ] && unset SSH_ASKPASS
export GIT_ASKPASS=

# Change tty title by function:
set-title(){
  ORIG=$PS1
  TITLE="\e]2;$@\a"
  PS1=${ORIG}${TITLE}
}

# Ibus rescue 
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Aliases
alias hotrxln="sudo nmcli device wifi connect rxln password tudatuda"
alias inst="sudo dnf install"
alias vpn="sudo openvpn --config"
alias pom="git push origin master"
alias co="git checkout"
alias cl="clear"
alias cm="git commit -m "
alias r="ranger"
alias tm="tmux new"
alias emoji="cat ~/emoji/emoji.txt | grep"
alias gog="git log  --abbrev-commit --name-status --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias ccat="source-highlight --out-format=esc256 -o STDOUT -i"
# Frontend aliases
alias mixedTabSpa="find . -name '*.js' -print0 | xargs -0 sed -i 's/^[ \t]*//g'"
alias crats="create-react-app . --typescript"
alias config='/usr/bin/git --git-dir=/home/rexolion/.cfg/ --work-tree=/home/rexolion'
