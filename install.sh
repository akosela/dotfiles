#!/bin/sh

cd ~
curl -fsSL http://raw.github.com/akosela/dotfiles/.Xresources > .Xresources.ak
curl -fsSL http://raw.github.com/akosela/dotfiles/.bash_profile > .bash_profile.ak
curl -fsSL http://raw.github.com/akosela/dotfiles/.bashrc > .bashrc.ak
curl -fsSL http://raw.github.com/akosela/dotfiles/.mailrc > .mailrc.ak

if [ -e .Xresources ]; then
	cp .Xresources .Xresources.bak
fi
mv .Xresouces.ak .Xresources

if [ -e .bash_profile.ak ]; then
	cp .bash_profile .bash_profile.bak
fi
mv .bash_profile.ak .bash_profile

if [ -e .bashrc ]; then
	cp .bashrc .bashrc.bak
fi
mv .bashrc.ak .bashrc

if [ -e .mailrc ]; then
	cp .mailrc .mailrc.bak
fi
mv .mailrc.ak .mailrc

echo "github.com/akosela/dotfiles installed successfully."
