setxkbmap -option caps:swapescape
compton -b --focus-exclude "x = 0 && y = 0 && override_redirect = true" &
nmcli con up id US\ East
st -e "tmux attach" &
exec dwm
