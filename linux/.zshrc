# requirements:
# eza, zsh-autosuggestions, zsh-helix-mode

# install setup:
# https://github.com/saayajin/scripts/blob/main/linux/setup-oh-my-zsh.sh

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git aliases command-not-found fzf history-substring-search magic-enter ssh sudo zsh-autosuggestions zsh-helix-mode)

source $ZSH/oh-my-zsh.sh

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

chpwd() {
  eza -aF --group-directories-first
}

autoload zmv
