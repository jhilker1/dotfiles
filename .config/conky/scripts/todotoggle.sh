#!/bin/bash 

CONKY_PID=$(ps aux | grep "[/]usr/bin/conky -y -25 -q -c /home/jhilker/.config/conky/todo.conf" | awk '{print $2}')

if [[ -z $CONKY_PID ]]; then
 /usr/bin/conky -y -25 -q -c /home/jhilker/.config/conky/todo.conf 
else
  kill $CONKY_PID
fi
