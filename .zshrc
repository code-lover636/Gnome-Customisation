ZSH_THEME="powerlevel10k/powerlevel10k"
# A more customized prompt with path
PROMPT='%F{cyan}%n%f@%F{green}%m%f:%F{yellow}%~%f $ '
# Load completion system
autoload -Uz compinit
compinit

# Case insensitive completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

alias btop="btop --utf-force"
alias mkvenv="python3 -m venv venv && source venv/bin/activate"
alias actvenv="source venv/bin/activate"
alias "run-nvidia"="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia"
alias "gpu-check"="glxinfo | grep 'OpenGL renderer'"
git_all() { git add . && git commit -m "$1" && git push; }
alias proj='cd ~/Desktop/Projects'

# Plugins
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history
# Key bindings for history navigation
bindkey '^[[A' up-line-or-history    # Up arrow
bindkey '^[[B' down-line-or-history  # Down arrow
bindkey '^[[C' forward-char          # Right arrow
bindkey '^[[D' backward-char         # Left arrow
bindkey 'WHATEVER_YOU_SAW' up-line-or-history
# History settings
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt appendhistory
setopt sharehistory
setopt incappendhistory
