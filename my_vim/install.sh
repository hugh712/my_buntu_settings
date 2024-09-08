#!/bin/bash

set -u
Installer=apt
echo -e "\033[32m install nessesary packages\033[0m"
sudo $Installer update
sudo $Installer install git-core vim curl byacc -y
sudo $Installer install git curl gcc make automake flex -y
sudo $Installer install libncurses5-dev  exuberant-ctags -y
sudo $Installer install tmux cscope -y

copy vimrc to ~/
echo -e "\033[32m copy vimrc to home directory\033[0m"
cp -i .vimrc ~/

#copy vimrc to ~/
echo -e "\033[32m copy tmux.conf to home directory\033[0m"
cp -i .tmux.conf ~/

echo -e "\033[32m git clone all git repos \033[0m"
#
repos_req=( "yegappan/taglist" \
            "preservim/nerdtree" \
            "vim-scripts/ctags.vim" \
            "garbas/vim-snipmate" \
            "Shougo/neocomplcache.vim" \
            "powerline/powerline" \
            "junegunn/fzf.vim"
)
url_base="https://github.com"
path_req=~/.vim/pack/vendor/start
path_opt=~/.vim/pack/vendor/opt

suffix=".git"
repos_opt=()

#mkdir vim plugin folder
if [ ! -d "$path_req" ]; then
  mkdir -p "$path_req"
fi
#mkdir vim plugin optional folder
if [ ! -d "$path_opt" ]; then
  mkdir -p "$path_opt"
fi

for repo in "${repos_req[@]}"
do
  folder=$(echo $repo | awk  -F "/" '{print  $2}' )
  real_path="$path_req"/"$folder"
  if [ -d "$real_path" ]; then
    echo -e "\033[32m Updating plugin - "$repo" \033[0m"
    (cd $real_path && git pull )
  else
    real_url="$url_base"/"$repo""$suffix"
    git clone "$real_url" "$real_path"
    if [ "$?" -eq 0 ]; then
      echo -e "\033[31m install failed in plugin - "$repo" \033[0m"
    else
      echo -e "\033[32m install done in plugin - "$repo" \033[0m"
    fi
  fi

done
