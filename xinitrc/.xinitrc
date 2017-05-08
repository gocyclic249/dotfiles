setxkbmap -option caps:swapescape
compton -b --focus-exclude "x = 0 && y = 0 && override_redirect = true" &
nmcli con up id US\ East &
firefox &
st &
while true; do
    # Log stderror to a file 
    dwm 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done
