# BASH Aliases
# Bijesh Mohan

# If user is not root, pass all commands via sudo
if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
    alias update='sudo apt-get upgrade'
fi

# Enable color support for ls, grep and other handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    # Colorize `ls` output
    alias ls='ls --color=auto'
    # Colorize and show hidden files
    alias l.='ls -d .* --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    # Colorize `grep` output
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Aliases for `ls`
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Aliases for `cd`
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias ~='cd ~'  # `cd` is probably faster to type though :)
alias -- -='cd -'

# Ask confirmation before mv, cp & rm
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias ln='ln -i'

# Start calculator with math support
alias bc='bc -l'

# Alias for clearing terminal
alias c='clear'
alias h='history'
alias j='jobs -l'

# Get week number
alias week='date +%V'

# Aliases for `ping`
alias ping='ping -c 4'
alias fastping='ping -c 64 -s.2'

# Become root
alias root='sudo -i'
alias su='sudo -i'

# Power control
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

# Git aliases & bash tab completions
alias gs='git status'
alias gc='git commit'
alias gca='git commit --amend'
alias gcm='git commit --message'
alias gco='git checkout'
__git_complete gco _git_checkout  # bash tab completion for `gco`
alias gcom='git checkout master'
alias gp='git pull'
__git_complete gp _git_pull  # bash tab completion for `gp`
alias gi='git init'
alias gd='git diff'
alias gb='git branch'
alias gr='git rebase'
__git_complete gr _git_rebase  # bash tab completion for `gr`

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
