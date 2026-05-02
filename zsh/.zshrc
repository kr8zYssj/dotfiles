fastfetch

export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/home/kr8zy/.local/bin"

ZSH_THEME=""

plugins=(git z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export EDITOR="nvim"
export VISUAL="nvim"
export SUDO_EDITOR="nvim"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

alias v='nvim'
alias ls='ls --color=auto'
alias hora='tty-clock -B -c -C 1'

PROMPT='
%F{#8E0000}╭─ %F{#aaaaaa}%n%f%F{#828282}@%f%F{#6f6f6f}%m%f %F{#8E0000}%~%f $(git_prompt_info)
%F{#8E0000}╰─%f %F{#828282}❯%f '

ZSH_THEME_GIT_PROMPT_PREFIX="%F{white}(%F{red}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f%F{white})%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{yellow}* %f"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# ENV
if [ -f "$HOME/zshrc.env" ]; then
    source "$HOME/zshrc.env"
fi

# Ollama
# export OLLAMA_HOST="$TAILSCALE_DATA"
alias qwen="OLLAMA_HOST='$TAILSCALE_DATA' ollama run qwen3.5:4b"

# Tailscale Up
# alias tail="sudo tailscale up"

# CodeQwen
alias code="OLLAMA_HOST='$TAILSCALE_DATA' ollama run codeqwen"

# Llama
alias llama="OLLAMA_HOST='$TAILSCALE_DATA' ollama run llama3.1"

# SSH
 alias pc="$SSH_DATA"
