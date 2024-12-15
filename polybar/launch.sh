#!/bin/sh
kill_polybar() {
  pkill -USR1 polybar
  sleep 1
  pkill polybar
}

# Matar instancias existentes
killall -q polybar

# Iniciar las nuevas instancias
polybar bottom &
polybar bottom2 &
