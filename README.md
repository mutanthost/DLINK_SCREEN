
**Iterm custom background from an IP camera**

This simple script 

 1. renames the last grab of an image
2. appends the current date
3. grabs the latest image and renders it with **imgcat**
4. (**imgcat** is included within this repo) 
5. You can either copy or symlink this to /usr/local/bin/imgcat 
 6. (which is a script of functions that use base64)
7. Thus, you may want to 
8. "$brew install -v base64" prior

The grab2desk.sh script uses  **iTerm's** built in shell functionality of **imgcat** to render the latest image within your shell.

You can also set this image as your background by setting the profile in iTerm.

For ***'anywhere'*** use, run this from a **GDRIVE** synced directory, and alias this within your ~/.bashrc

alias look='cd /DATA/APPS/GDRIVE/_June_2019 && ./grab2desk.sh'
resulting in


