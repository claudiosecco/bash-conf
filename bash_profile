# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
alias get='curl -OL'
alias g='grep -i'
alias lr='ls -hartl'

# if using Ubuntu from microsoft store on windows10
# alias winuser="cd /mnt/c/Users/'Claudio Secco/'"
# info: find linux environment in C:\Users\Claudio Secco\AppData\
#       Local\Packages\CanonicalGroupLimited.UbuntuonWindows_79rhkp1fndgsc\LocalState\rootfs\home

# use following commands to configure prompt and tab completion
# $ curl -o ~/.git-prompt.sh -OL https://claudiosecco.github.io/website/.git-prompt.sh
# $ curl -o ~/.git-completion.bash -OL https://claudiosecco.github.io/website/.git-completion.bash
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
