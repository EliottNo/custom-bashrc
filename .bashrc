#
# EliottNo's Custom .bashrc
#

# Custom Colors
BOLD="\[$(tput bold)\]"
BLUE="\[$(tput setaf 12)\]"
GREEN="\[$(tput setaf 10)\]"
RED="\[$(tput setaf 9)\]"
YELLOW="\[$(tput setaf 11)\]"
WHITE="\[$(tput setaf 15)\]"
RESET="\[$(tput sgr0)\]"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls -X --color=auto'
alias wget='wget --show-progress'
alias less='less -N'
alias grep='grep --color'

# Custom prompt
PS1="${BOLD}${BLUE}[${RESET}${BOLD}${GREEN}\u${RESET}${BOLD}${RED}@${RESET}${BOLD}${GREEN}\h${RESET}${BOLD}${BLUE}]${RESET} ${BOLD}${YELLOW}\w${RESET} ${BOLD}${WHITE}\$${RESET} "
