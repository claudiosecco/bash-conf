# set PATH so it includes user's private bin directories
PATH="/opt/scripts:$HOME/bin:$HOME/.local/bin:$PATH"
alias get='curl -OL'
alias g='grep -i'
alias ls='ls --color=auto'
alias lr='ls -hartl'

# if using Ubuntu from microsoft store on windows10
# alias winuser="cd /mnt/c/Users/'Claudio Secco/'"
# info: find linux environment in C:\Users\Claudio Secco\AppData\
#       Local\Packages\CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc\LocalState\rootfs\home

# use following commands to configure prompt and tab completion
# $ chmod +x ~/.git-prompt.sh
# $ chmod +x ~/.git-completion.bash

# Git configuration
# Branch name in prompt
source ~/.git-prompt.sh
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# Tab completion for branch names
source ~/.git-completion.bash

#initialize homebrew ruby environment
#eval "$(rbenv init -)"

# arch using keychain
# eval $(keychain --eval --quiet id_rsa)
