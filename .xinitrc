while true; do
   xsetroot -name "$( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &
xrdb -merge ~/.Xresources
xmodmap ~/.Xmodmap
xbindkeys
xterm&
xset -dpms
xset s off
dropbox start&
exec dwm