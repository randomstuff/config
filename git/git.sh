#!/bin/sh

# ### Helpers

# ask VAR Message
# ask VAR
ask() {
    if [ x"$2" = x ]; then
	echo -n "$1="?
    else
	echo -n "$2"
    fi
    read "$1"
}

# ### Custom config

# User

ask name "What is your name?"
ask email "What is your email?"
ask editor "What is your editor?"

git config --global user.name "$name"
git config --global user.email "$email"
git config --global core.editor "$editor"

# CLI UI

git config --global color.ui auto
git config --global color.diff.new blue # Same as colordiff

git config --global log.decorate short

# Behaviour

# git config --global merge.ff false
git config --global merge.defaultToUpstream true

git config --global push.default upstream

git config --global credential.helper cache

# ### Alias

# log
git config --global alias.graph    "log --graph --oneline --format=format:'%C(auto)%h %d %s %Cblue(%aN)'"
git config --global alias.g        "log --graph --oneline --format=format:'%C(auto)%h %d %s %Cblue(%aN)'"
git config --global alias.oneline  "log --oneline --format=format:'%C(auto)%h %d %s %Cblue(%aN)'"
git config --global alias.graphall "log --graph --oneline --all --format=format:'%C(auto)%h %d %s %Cblue(%aN)'"
git config --global alias.ga       "log --graph --oneline --all --format=format:'%C(auto)%h %d %s %Cblue(%aN)'"
git config --global alias.new      'log ..@{upstream}'
git config --global alias.pending  'log @{upstream}..'
git config --global alias.pickaxe  'log -S'
git config --global alias.pickaxe-regex  'log -S --pickaxe-regex'
git config --global alias.follow   'log --follow'

# merge
git config --global alias.ff "merge --ff-only"
git config --global alias.noff "merge --no-ff"
git config --global alias.no-ff "merge --no-ff"

# reset
git config --global alias.mixed "reset --mixed"
git config --global alias.hard "reset --hard"
git config --global alias.soft "reset --soft"
git config --global alias.unstage "reset HEAD"

# show
git config --global alias.s "show -s"

# diff
git config --global alias.cached "diff --cached"
git config --global alias.staged "diff --staged"

# commit
git config --global alias.amend "commit --amend -v"
git config --global alias.ci "commit -v"
git config --global alias.ca "commit -va"
git config --global alias.aa "commit --all --no-edit --amend"

# checkout
git config --global alias.co "checkout"
git config --global alias.c "checkout"
git config --global alias.sprout "checkout -b"
git config --global alias.detach "checkout --detach"

# branch
git config --global alias.set-upstream "branch --set-upstream"

git config --global alias.assume-unchanged "update-index --assume-unchanged"
git config --global alias.no-assume-unchanged "update-index --no-assume-unchanged"

# help
git config --global alias.webhelp "help -w"

# Git Ignore
git config --global core.excludesfile '~/.gitignore'
