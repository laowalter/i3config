#!/usr/bin/env bash

#nnn
export NNN_PLUG='f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview;i:cdonquit;'
export VISUAL="nvim"
export NNN_TRASH=1

# print ;i to exec cdonquit
nnn_cd()                                                                                                   
{
    if ! [ -z "$NNN_PIPE" ]; then
        printf "%s\0" "0c${PWD}" > "${NNN_PIPE}" !&
    fi  
}

trap nnn_cd EXIT
nnn -e
