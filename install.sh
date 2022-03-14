#!/bin/sh

url="https://raw.github.com/akosela/dotfiles/master"

cd ~
curl -fsSL $url/.Xresources > .Xresources.ak
curl -fsSL $url/.bash_profile > .bash_profile.ak
curl -fsSL $url/.bashrc > .bashrc.ak
curl -fsSL $url/.exrc > .exrc.ak
curl -fsSL $url/.mailrc > .mailrc.ak
curl -fsSL $url/.tmux.conf > .tmux.conf.ak
curl -fsSL $url/.gitconfig > .gitconfig.ak

if [ -e .Xresources ]; then
	cp .Xresources .Xresources.bak
fi
mv .Xresources.ak .Xresources

if [ -e .bash_profile.ak ]; then
	cp .bash_profile .bash_profile.bak
fi
mv .bash_profile.ak .bash_profile

if [ -e .bashrc ]; then
	cp .bashrc .bashrc.bak
fi
mv .bashrc.ak .bashrc

if [ -e .exrc ]; then
	cp .exrc .exrc.bak
fi
mv .exrc.ak .exrc

if [ -e .mailrc ]; then
	cp .mailrc .mailrc.bak
fi
mv .mailrc.ak .mailrc

if [ -e .tmux.conf ]; then
	cp .tmux.conf .tmux.conf.bak
fi
mv .tmux.conf.ak .tmux.conf

if [ -e .gitconfig ]; then
	cp .gitconfig .gitconfig.bak
fi
mv .gitconfig.ak .gitconfig

echo "github.com/akosela/dotfiles installed successfully."
