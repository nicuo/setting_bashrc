#!/bin/bash

cat << EOF >> ~/.bashrc

stty stop undef

function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend

EOF
