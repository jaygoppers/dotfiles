#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
#polybar -rq wsnumber &
#polybar -rq music &
#polybar -rq tray &
#polybar -rq essentials &
polybar -rq top &
polybar -rq bottom &
echo "Polybar launched..."


