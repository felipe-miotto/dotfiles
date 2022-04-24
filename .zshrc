# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export EDITOR="nvim"

# Aliases
alias v='nvim'
alias commit='git add -A; git commit -m'
alias ll='ls -Alh'
alias lld='lsd -Alh'
alias lsd='lsd --group-dirs first'
alias bkp='cp ~/.zshrc ~/Desktop/vscode/configs_bkp &&
cp ~/.SpaceVim.d/Autoload/myconfig.vim ~/Desktop/vscode/configs_bkp &&
cp ~/.Spacevim.d/init.toml ~/Desktop/vscode/configs_bkp'

# Git Right Side Prompt:
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# Prompt
declare -a PROMPTS
PROMPTS=(
    "♦"
    "♣"
    "♠"
    "♥"
)
RANDOM=$$$(date +%s)
ignition=${PROMPTS[$RANDOM % ${#RANDOM[*]}]}
# 179
PROMPT='%(?.%F{green}√.%F{red}?%?)%f%B%F{186}[%f%F{138}%n%f%F{212}༆ %f%F{223}%1~%f%F{186}]%f%F{43} $ignition%f %b'
# ＊❯ ❱ ༆
