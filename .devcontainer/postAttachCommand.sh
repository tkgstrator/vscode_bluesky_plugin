#!/bin/zsh

git config --global --unset commit.template
git config --global --add safe.directory /home/bun/app
git config --global fetch.prune true
git config --global --add --bool push.autoSetupRemote true
git branch --merged|egrep -v '\*|develop|main|master'|xargs git branch -d
git config --global commit.gpgSign true
