# Tmux Auto Command Plugin

Custom command macro plugin for tmux

## Installation

### Install fzf
github: [fzf](https://github.com/junegunn/fzf)

1. git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
2. ~/.fzf/install (choose `n` for all option)
3. sudo cp ~/.fzf/bin/fzf /usr/local/bin
4. sudo cp ~/.fzf/bin/fzf-tmux /usr/local/bin
5. rm -rf ~/.fzf

### Inatall tmux-auto
1. mkdir -p ~/.tmux/plugins
2. cd ~/.tmux/plugins
3. git clone https://github.com/simonxander/tmux-auto.git

### Modify tmux config
1. vi ~/.tmux.conf
2. append `run-shell ~/.tmux/plugins/tmux-auto/tmux-auto.tmux` at the end of the config file
3. run `tmux source ~/.tmux.conf` to reload tmux

## How to Use

1. Under any tmux screen
2. Press `Ctrl-B(tmux leader key) + e` to ativate action select panel
3. Select action by arrow key or type to search
4. Press `Enter` to execute or `Esc` to cancel

## Custom Scripts

Put your custom scripts under `$HOME/.tmux-auto`

You can get tmux pane id from environment variable `PANE_ID` and use tmux-keys to send key code to your tmux pane.
https://leanpub.com/the-tao-of-tmux/read#send-keys

### Example without prompt

1. mkdir -p ~/.tmux-auto/
2. cp ~/.tmux/plugins/tmux-auto/examples/list-file ~/.tmux-auto/list-file

### Example with prompt

1. mkdir -p ~/.tmux-auto/
2. cp ~/.tmux/plugins/tmux-auto/examples/linuxuser-id ~/.tmux-auto/linuxuser-id

