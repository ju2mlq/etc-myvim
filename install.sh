#!/usr/bin/env bash

WORK_DIR=$(dirname $(readlink -f $0))

backup () {
  local filename=$(basename $1)
  local dir=$(dirname $1)
  local timestamp=$(date '+%s')

  mv ${dir}/${filename} ${dir}/${filename}_${timestamp}
}

install_neobundle () {
  curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | bash
}

[[ -e ~/.vimrc ]] && backup ~/.vimrc
[[ -e ~/.vim ]] && backup ~/.vim

ln -fs ${WORK_DIR}/vimrc ~/.vimrc
ln -fs ${WORK_DIR}/vim ~/.vim

install_neobundle
