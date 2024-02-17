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

# CLI UI cosmetics

git config --global color.ui auto
git config --global color.diff.new blue # Same as colordiff
git config --global log.decorate short
git config --global log.date iso
# git config --global core.pager delta

git config --global diff.algorithm histogram

# Behaviour

git config --global merge.defaultToUpstream true
git config --global push.default upstream
git config --global credential.helper cache
git config --global init.defaultBranch main

# Git Ignore

git config --global core.excludesfile '~/.gitignore'
