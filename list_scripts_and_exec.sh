#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

file_list=()
default_list=()
custom_list=()

for file in ${CURRENT_DIR}/scripts/*
do
	if [[ -f $file ]]; then
		file_list+=($(basename -- $file))
		default_list+=($(basename -- $file))
	fi
done

for file in ${HOME}/.tmux-auto/*
do
	if [[ -f $file ]]; then
		file_list+=($(basename -- $file))
		custom_list+=($(basename -- $file))
	fi
done

selected=$(for file in "${file_list[@]}"; do
	echo $file
done | fzf) # xargs -I_ tmux send-keys -t "$PANE" '_' Enter

prefix=${CURRENT_DIR}/scripts/
if [[ " ${custom_list[@]} " =~ " ${selected} " ]]; then
	prefix=${HOME}/.tmux-auto/
fi

PANE_ID="$PANE" ${prefix}/${selected}
