#set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
alias rm='rm -i'
alias get='curl -OL'
alias g='grep -i'
alias ls='ls --color=auto'
alias lr='ls -hartl'
# wsl1: win vai para a pasta do usuario no windows
alias win='cd /mnt/c/Users/claudio.secco'
# if linux, need to create pbcopy and pbpaste
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias ghex='xxd -r -p ~/Downloads/ghex | pbcopy'
# helper to rails users. refer to .cdroot.bash for more details
alias cdroot='. ~/.cdroot.bash'

# Git configuration
# $ chmod +x ~/.git-prompt.sh
# $ chmod +x ~/.git-completion.bash
# Branch name in prompt
source ~/.git-prompt.sh
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# Tab completion for branch names
source ~/.git-completion.bash

#initialize homebrew ruby environment
eval "$(rbenv init -)"

#autoexec keychain in linux
eval $(keychain --eval --quiet --noask id_rsa)

# make macOs terminal cp and mv consider dotfiles
# not sure if it's necessary for linux
#shopt -s dotglob

eval "$(ssh-agent -s)" > /dev/null
