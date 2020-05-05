#! /bin/bash

# This simple script executes a helper command 'cdroot' to rails users, that
# changes the current working directory within an rails app to the root directory 
# of the app
# Example: in ../app/view/layout type cdroot and you reach directly the app
# root directory
# Save this file in ~/
# Make it executable with chmod +x ~/.cdroot.bash
# Include alias cdroot='. ~/.cdroot.bash' in your .bash_profile (or .bashrc)

# Flow controller
Done=0

# If not under ~/, stop here
pwd | grep "$HOME" > /dev/null
if [[ $? -ne 0 ]];then
  echo "must be under ~/"
  Done=1
fi

while [[ $Done == 0 ]]
do
  # if found Gemfile file, working directory is the app's root
  if [ -f 'Gemfile' ];then
    Done=1
  fi

  # if this script is called outside a rails app, it stops at ~/
  if [[ $PWD == $HOME ]];then
    Done=1
  fi

  # if not reached destination, go to parent directory
  if [[ $Done -ne 1 ]];then
    cd ..
  fi
done
