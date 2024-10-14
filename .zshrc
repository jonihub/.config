# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# plugins
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# keybindings
# bindkey '^[[A' history-substring-search-up
# bindkey '^[[B' history-substring-search-down

# aliases
alias ls='ls --color=auto'
alias bu='brew update -v | lolcat'
alias bo='brew outdated | lolcat'
alias mod='nano ~/.zshrc'
alias btop='bpytop'
alias la='ls -A'
alias ..='cd ..'
alias ll='lsd -Alh'

# git bare
alias config='/usr/bin/git --git-dir=/Users/jonathancooper/.cfg/ --work-tree=/Users/jonathancooper'

# fzf config
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)

# pyenv config
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Themes
# source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Disable INSTANT_PROMPT 
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# RANDOM COLOR SCRIPT FROM DT COLORSCRIPT 
colorscript random
source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme
