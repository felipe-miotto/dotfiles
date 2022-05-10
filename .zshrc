# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export EDITOR="nvim"

# Case Insensitive Tab Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# Aliases
alias v='nvim'
alias pip='pip3'
alias python='python3'
alias ll='ls -Alh'
alias lld='lsd -Alh'
alias lsd='lsd --group-dirs first'

# Script Alias
alias dot='cp ~/.zshrc ~/Desktop/dotfiles &&
cp ~/.SpaceVim.d/Autoload/myconfig.vim ~/Desktop/dotfiles/spacevim &&
cp ~/.Spacevim.d/init.toml ~/Desktop/dotfiles/spacevim &&
cp ~/.config/alacritty/alacritty.yml ~/Desktop/dotfiles/alacritty &&
cp ~/.config/lf/lfrc ~/Desktop/dotfiles/lf &&
cp ~/.Spacevim/autoload/Spacevim.vim ~/Desktop/dotfiles/spacevim'

# Git Alias
alias commit='git add -A; git commit -m'
alias unstage='git reset HEAD --'
alias pom='git push -u origin master'
alias co='git checkout' # Escreve depois o nome da branch, navega para ela
alias cm='git checkout master' # Volta para a master branch
alias cb='git checkout -b' # Escreve o nome da branch, cria ela e faz um checkout para a nova branch

#  Git Right Side Prompt:
# autoload -Uz vcs_info
# precmd_vcs_info() { vcs_info }
# precmd_functions+=( precmd_vcs_info )
# setopt prompt_subst
# RPROMPT=\$vcs_info_msg_0_
# zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
# zstyle ':vcs_info:*' enable git

#  Prompt
# declare -a PROMPTS
# PROMPTS=(
#     "♦"
#     "♣"
#     "♠"
#     "♥"
# )
# RANDOM=$$$(date +%s)
# ignition=${PROMPTS[$RANDOM % ${#RANDOM[*]}]}

# PROMPT='%(?.%F{green}√.%F{red}?%?)%f%B%F{186}[%f%F{138}%n%f%F{212}༆ %f%F{223}%1~%f%F{186}]%f%F{43} $ignition%f %b'
#  ＊❯ ❱ ༆

source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Neofetch
neofetch

# Fortune
fortune

echo ' '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

