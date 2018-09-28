#!/bin/sh

# branch
git config --global alias.set-upstream "branch --set-upstream"

# checkout
git config --global alias.detach "checkout --detach"

# commit
git config --global alias.amend "commit --amend -v"

# diff
git config --global alias.cached "diff --cached"
git config --global alias.staged "diff --staged"

# log
git config --global alias.graph    "log --graph --oneline --format=format:'%C(auto)%h %d %s %Cblue(%aN)'"
git config --global alias.oneline  "log --oneline --format=format:'%C(auto)%h %d %s %Cblue(%aN)'"

# merge
git config --global alias.ff "merge --ff-only"
git config --global alias.no-ff "merge --no-ff"

# reset
git config --global alias.mixed "reset --mixed"
git config --global alias.hard "reset --hard"
git config --global alias.soft "reset --soft"
