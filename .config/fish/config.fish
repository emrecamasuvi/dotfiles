if status is-interactive
    # Commands to run in interactive sessions can go here
end

source /opt/homebrew/opt/asdf/libexec/asdf.fish

cd ~/Projects

function current_branch  
    set ref (git symbolic-ref HEAD 2> /dev/null); or \
    set ref (git rev-parse --short HEAD 2> /dev/null); or return
    echo $ref | sed -e 's|^refs/heads/||'
end

alias df='git difftool -d "HEAD^"'
alias dfm='git difftool -d master..'
alias dfl='git diff --no-commit-id --name-only --no-merges origin/master...'
alias dfe='!git --no-pager diff --no-color > diff.patch'
alias gs='git status'
alias gc='git checkout'
alias gcm='git checkout master && git pull'
alias gip='git fetch && git pull origin (current_branch)'
alias gp='git push'
alias gm='git merge --no-ff '
alias gri='git rebase -i'
alias gk='gitk --follow '
alias lol='git log --oneline --decorate --all --graph'
alias removeorig="find . -name '*.orig' -delete"
