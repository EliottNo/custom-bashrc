#
# EliottNo's Custom .bashrc
# For root
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

[[ $DISPLAY ]] && shopt -s checkwinsize

# Aliases
alias ls='ls -X --color=auto'
alias wget='wget --show-progress'
alias less='less -N'
alias grep='grep --color'

# Custom prompt
PS1="${BOLD}${RED}[${RESET}${BOLD}${YELLOW}\h${RESET}${BOLD}${RED}]${RESET} ${BOLD}${RED}\w${RESET} ${BOLD}${WHITE}#${RESET} "

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

