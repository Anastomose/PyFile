#source modules completion and prompt
source ~/.git-completion.sh
source ~/.git-prompt.sh


export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
PROMPT_COMMAND='__git_ps1 "" "\h:\W \u\\\$ " "[%s]\n"'

##Add formatting, virtualenv, and git branches
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUPSTREAM="auto"
Color_Off="\[\033[0m\]"
Yellow="\[\033[0;33m\]"
PROMPT_COMMAND='__git_ps1 "${VIRTUAL_ENV:+[$Yellow`basename $VIRTUAL_ENV`$Color_Off]\n}" "\h:\W \u\\\$ " "[%s]\n"'

#create an alias for the ls command so that future ls are color coded
alias ls='ls --color=auto'