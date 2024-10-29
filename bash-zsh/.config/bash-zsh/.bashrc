# Author: laurent-lao
# Add this line to ~/.bashrc
# source ~/.config/bash-zsh/.bashrc

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

# Use Starship prompt
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init bash)"

# Define prompt manually
# PS1='[\u@\h \W]\$ '
