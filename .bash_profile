# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"
alias get='curl -OL'
alias g='grep -i'
alias lr='ls -hartl'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

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
eval "$(rbenv init -)"

#autoexec keychain in linux
#eval $(keychain --eval --quiet id_rsa)

# make macOs terminal cp and mv consider dotfiles
# not sure if it's necessary for linux
shopt -s dotglob
