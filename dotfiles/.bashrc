alias ls='ls -G'

# colors ----------------------------------------------------------------------
GREEN='\e[0;32m\]'
B_GREEN='\e[1;32m\]'
MAGENTA='\e[0;35m\]'
B_MAGENTA='\e[1;35m\]'
YELLOW='\e[0;33m\]'
B_YELLOW='\e[1;33m\]'
RED='\e[0;31m'
BLUE='\e[0;34m'
B_BLUE='\e[1;34m'
CYAN='\e[0;36m\]'
COLOR_END='\[\033[0m\]'

# PROMPT ----------------------------------------------------------------------
# PS1="\h:\W \u\$ "  # default promopt
TIMESTAMP='\D{%F %a %T}'
GIT_BRANCH=''
export PS1="${MAGENTA}\$(date +%Y-%m-%d-%a) ${B_YELLOW}\$(date +%T) ${GREEN}\u ${B_MAGENTA}\h ${B_BLUE}\w ${COLOR_END}\$(/usr/local/bin/githud bash)\n\$ "

plugins=(
   fasd
   )   


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

