#!/usr/bin/env bash
# renames the last grab of an image, and appends the current date
# then grabs the latest image and renders it with imgcat
# imgcat is included within this repo and can be either copied or symlinked to
# /usr/local/bin/imgcat (which is a script of functions that use base64)
# Thus, you may want to "$brew install -v base64" prior
# Uses iTerm built in shell functionality of imgcat to render the latest
# image within your shell
# You can also set this image as your background by setting the profile in iTerm
# and for 'anywhere' use, run this from a GDRIVE synced directory and alias this
# within your ~/.bashrc as
# alias look='cd /DATA/APPS/GDRIVE/_June_2019 && ./grab2desk.sh'
# Copyleft 2019 Matt Huston 
# All wrongs reversed 
mv image.jpg image-`date +"%Y%m%d_%H%M%S"`.jpg
wget http://USERNAME:PASSWORD@YOURIP:8889/image.jpg
sleep 2
/usr/local/bin/imgcat image.jpg

