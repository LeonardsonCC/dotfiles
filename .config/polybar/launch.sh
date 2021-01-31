#!/bin/bash

# Termine instâncias de barras em execução
killall -q polybar

# Espere até que os processos em execução sejam terminados
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Abrir polybar em todos os monitores
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload mainbar-i3 &
  done
else
  polybar --reload mainbar-i3 &
fi

echo "Polybar lançada..."
