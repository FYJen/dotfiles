# user, host, full path, git info, virtualenv info
# on two lines for easier vgrepping

# Pull left
PROMPT=$'
%{\e[0;34m%}%B┌─[%b%{$FG[040]%}%n%{$reset_color%}%B@%b%{$FG[033]%}%m%{$reset_color%}%B]%b%{\e[0m%} - %{\e[0;34m%}%B[%b%{$fg[cyan]%}%~%{$reset_color%}%B]%b%{\e[0m%}$(git_prompt_info) $ 
%{\e[0;34m%}%B└─%B[%{$fg[red]%}>%{$reset_color%}%B]%{\e[0m%}%b '

# Pull right
RPROMPT=$'$(virtualenv_prompt_info)'


PS2=$'%{$fg[red]%}%B>%{\e[0m%}%b%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" - %B[%b%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%B]%b"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[202]%} ✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%} ✔"
ZSH_THEME_VIRTUALENV_PREFIX="%B[%b%{$fg[magenta]%}"
ZSH_THEME_VIRTUALENV_SUFFIX="%{$reset_color%}%B]%b "

