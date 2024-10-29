# Author: laurent-lao
# Add this line to ~/.zshrc
# source ~/.config/bash-zsh/.zshrc

# Set aliases for bash/zsh
if [ -f ~/.config/bash-zsh/.aliases ]; then
    . ~/.config/bash-zsh/.aliases
fi

# Set environment variables for bash/zsh
if [ -f ~/.config/bash-zsh/.envvars ]; then
    . ~/.config/bash-zsh/.envvars
fi

# Use Starship prompt
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/bash-zsh/starship.toml

# Plugins installed through package manager
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
