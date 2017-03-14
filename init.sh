#!/bin/bash

BSRC = "source ~/env_lxn/.bashrc"
VMRC = "source ~/env_lxn/.vimrc"

if [ -f ~/.bashrc ]
then
    if [ &(tail -1) != $BSRC ]
    then
        echo -e "\n\n$BSRC" >> ~/.bashrc
    fi

else
    cp ~/env_lxn/.bashrc ~/.bashrc
fi

if [ -f ~/.vimrc ]
then
    if [ &(tail -1) != $VMRC ]
    then
        echo -e "\n\n$VMRC" >> ~/.vimrc
    fi

else
    cp ~/env_lxn/.bashrc ~/.vimrc
fi
