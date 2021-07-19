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

# deploy softwares
function conf_vim() {
  link $ROOT/vim            $HOME/.vim
  link $ROOT/vim/vimrc      $HOME/.vimrc
}

function conf_bash() {
  link $ROOT/bash/bashrc    $HOME/.bashrc
}

function conf_i3() {
  link $ROOT/i3/config      $HOME/.config/i3/config
}

function conf_i3status() {
  link $ROOT/i3status/config $HOME/.config/i3status/config
}

function conf_v2ray() {
  require_sudo $*
  link /home/$2/.dotfiles/v2ray/client.json /etc/v2ray/config.json
}

function conf_xterm() {
  link $ROOT/xterm/Xresources $HOME/.Xresources
}

function conf_git() {
  link $ROOT/git/gitconfig $HOME/.gitconfig
}

function main() {
  case $1 in
    vim)
      conf_vim
      ;;
    bash)
      conf_bash
      ;;
    i3)
      conf_i3
      ;;
    i3status)
      conf_i3status
      ;;
    v2ray)
      conf_v2ray $*
      ;;
    xterm)
      conf_xterm
      ;;
    git)
      conf_git
      ;;
    *)
      echo "ERROR: Unknown paramemter: $*"
      exit 0
      ;;
  esac

  echo "Successfully setup $*"
}

main $*
