# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export EDITOR="nvim"

# Aliases
alias v='nvim'
alias commit='git add -A; git commit -m'
alias ll='ls -Alh'
alias lld='lsd -Alh'
alias lsd='lsd --group-dirs first'
alias bkp='cp ~/.zshrc ~/Desktop/backupfiles &&
cp ~/.SpaceVim.d/Autoload/myconfig.vim ~/Desktop/backupfiles &&
cp ~/.Spacevim.d/init.toml ~/Desktop/backupfiles &&
cp ~/.config/alacritty/alacritty.yml ~/Desktop/backupfiles'

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
