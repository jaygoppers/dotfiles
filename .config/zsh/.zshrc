source ~/.config/zsh/.zprofile

# Setting up default
export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'

# Prompt
PROMPT='%F{blue}%1~%f %F{cyan}>%f '
## Git settings
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# Aliases

## List
alias ls="exa"
alias l="exa"
alias la="exa -a"
alias ll="exa -al"

## App
alias vim="nvim"
