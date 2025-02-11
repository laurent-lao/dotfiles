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
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_ALL_DUPS

# Plugins installed through package manager
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Show fastfetch on new shell
fastfetch
# fastfetch -c ~/.config/fastfetch/config-logo.jsonc
# fastfetch -c ~/.config/fastfetch/config-table.jsonc
