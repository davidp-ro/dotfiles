#!/bin/bash

# Small tool to copy dotfiles | github.com/davidp-ro

# == TODO ==
#   - Take args to only copy certain files
#   - Add a restore mode

# == Configs ==

# Config folder:
CONFIG_DIR=~/.config
VIM_CFG_DIR=~

# Default folder to save configs in:
POLYBAR_DIR=./polybar
VIM_DIR=./vim
BASH_DIR=./bash
I3_DIR=./i3

# == Script ==

showInfo() {
    echo "=============================================================="
    echo "This script will update your vim, polybar and i3 config files."
    echo "The default config path is ~/.config and ~/ for vim, see README"
    echo "==="
}

deleteExisting() {
    # Delete all existing folders (if they are present)
    #
    # A better aproach would probably be to move them to temp in case it fails,
    # and if it fails restore them.
    if [ -d "$POLYBAR_DIR" ]; then
        echo "[INFO] Deleting previous Polybar dir"
        rm -rf "$POLYBAR_DIR"
    fi
    if [ -d "$VIM_DIR" ]; then
        echo "[INFO] Deleting previous Vim dir"
        rm -rf "$VIM_DIR"
    fi
    if [ -d "$BASH_DIR" ]; then
        echo "[INFO] Deleting previous Bash dir"
        rm -rf "$BASH_DIR"
    fi
    if [ -d "$I3_DIR" ]; then
        echo "[INFO] Deleting previous i3 dir"
        rm -rf "$I3_DIR"
    fi

}

copyAll() {
    # Copy files from their config dirs to here
    #
    # Polybar
    cp -r "$CONFIG_DIR/polybar" "$POLYBAR_DIR"
    # Vim
    mkdir "$VIM_DIR"
    cp -r "$VIM_CFG_DIR/.vim" "$VIM_DIR/.vim"
    cp "$VIM_CFG_DIR/.vimrc" "$VIM_DIR/.vimrc"
    # Bash
    mkdir "$BASH_DIR"
    cp ~/.bashrc "$BASH_DIR/.bashrc"
    # i3
    cp -r "$CONFIG_DIR/i3" "$I3_DIR"
}

showDone() {
    echo "==="
    echo ">>> Updated files <<<"
    echo "=============================================================="
}

# == Run ==
showInfo
deleteExisting
copyAll
showDone

# == EOF ==

