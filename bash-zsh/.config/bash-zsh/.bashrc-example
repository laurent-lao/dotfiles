#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set aliases for bash/zsh
if [ -f ~/.config/bash-zsh/.aliases ]; then
    . ~/.config/bash-zsh/.aliases
fi

# Set environment variables for bash/zsh
if [ -f ~/.config/bash-zsh/.envvars]; then
    . ~/.config/bash-zsh/.envvars
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
