# user, host, full path, git info, virtualenv info
# on two lines for easier vgrepping

setopt prompt_subst

() {

local CUR_USER CUR_HOST CUR_PATH GIT_BRANCH RETURN_ARROW

CUR_USER='%F%{$FG[040]%}%n%f'
CUR_HOST='%F%{$FG[033]%}%m%f'
CUR_PATH='%F%{$fg[cyan]%}%~%f'
GIT_BRANCH='$(git_prompt_info)'
RETURN_ARROW='%F%{$fg[red]%}>%f'

# Pull left
PROMPT="
┌─[${CUR_USER}@${CUR_HOST}] - [${CUR_PATH}] ${GIT_BRANCH}$
└─[${RETURN_ARROW}] "

# Pull right
RPROMPT=$'$(virtualenv_prompt_info)'

# Git setup
ZSH_THEME_GIT_PROMPT_PREFIX="- [%F%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f] "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[202]%} ✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%} ✔"

# Virtualenv setup
ZSH_THEME_VIRTUALENV_PREFIX="[%F%{$fg[magenta]%}"
ZSH_THEME_VIRTUALENV_SUFFIX="%f] "

}

