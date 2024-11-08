#!/bin/bash
# By yongcong.wang @ 13/07/2020

# opts
set -e  # err exit
#set -x  # cmd trace

# vars
HOME="$(cd ~; pwd)"
ROOT="$HOME/.dotfiles"

# functions
function clear_file() {
  if [[ -d $1 || -f $1 || -L $1 ]]; then
    rm -rf $1
  fi
}

function link() { 
  clear_file $2
  ln -s $1 $2
}

function require_sudo() {
  if [[ $UID != 0 ]]; then
    echo "Permission denied! Please run this script with sudo and user_name:"
    echo "sudo bash $0 $* wyc"
    exit 1
  fi
}

# deploy software confs
function install_ctags() {
  git clone https://github.com/universal-ctags/ctags.git
  cd ctags
  ./autogen.sh
  ./configure
  make
  sudo make install
  rm -rf ctags
}

function conf_vim() {
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  link $ROOT/vim/vimrc $HOME/.vimrc
}

function conf_bash() {
  link $ROOT/bash/bashrc $HOME/.bashrc
}

function conf_i3() {
  link $ROOT/i3/config $HOME/.config/i3/config
}

function conf_polybar() {
  link $ROOT/polybar/config $HOME/.config/polybar/config
}

function conf_i3status() {
  link $ROOT/i3status/config $HOME/.config/i3status/config
}

function conf_v2ray() {
  require_sudo $*
  cp /home/$2/.dotfiles/v2ray/client.json /etc/v2ray/config.json
}

function conf_xterm() {
  link $ROOT/xterm/Xresources $HOME/.Xresources
}

function conf_git() {
  link $ROOT/git/gitconfig $HOME/.gitconfig
}

function conf_tmux() {
  link $ROOT/tmux/tmux.conf $HOME/.tmux.conf
}

function conf_ssh() {
  link $ROOT/ssh/config $HOME/.ssh/config
}

function main() {
  if [[ $UID != 0 && $PWD != $ROOT ]]; then
    echo "Erorr: $PWD is not correct location: $ROOT"
    exit 0
  fi

  case $1 in
    vim|bash|i3|polybar|i3status|v2ray|xterm|git|tmux|ssh)
      conf_$1 $*
      ;;
    *)
      echo "ERROR: Unknown paramemter: $*"
      exit 0
      ;;
  esac

  echo "Successfully setup $*"
}

main $*
