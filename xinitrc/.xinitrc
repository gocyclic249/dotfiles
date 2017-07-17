setxkbmap -option caps:swapescape
sxhkd &
[[ -f ~/.xmodmap ]] && xmodmap ~/.xmodmap
compton -b --focus-exclude "x = 0 && y = 0 && override_redirect = true" &
nohup sleep 20s && nmcli con up id US\ East &
nohup sleep 30s && mpd &
#nohup sleep 30s && dropbox-cli start &
#while true; do
#       xsetroot -name "Time: $(date +%H%M) :: Volume: $(amixer | grep Playback | tail -n2 | head -n1 | awk '{print $5;}') : $(amixer | grep Playback | tail -n1 | awk '{print $5;}') :: VPN: $(nmcli con | grep vpn | grep wlp | awk '{print $1,$2;}') :: Battery: $(acpi -b | awk 'sub(/,/,"") {print $4}')"
#       sleep 20
#done &
#
exec startlxqt


