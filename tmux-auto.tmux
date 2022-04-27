#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
tmux bind-key e run-shell "tmux split-window -v \"PANE='#{pane_id}' ${CURRENT_DIR}/list_scripts_and_exec.sh\""

