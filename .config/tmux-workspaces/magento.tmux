rename-window shell

new-window -n vim
send "nvim ." C-m

new-window -t 9 -n magento
send "sway_magento" C-m
split-window -h
send "tail -f var/log/*" C-m
split-window -v
send "tail -f /var/log/apache2/*.log" C-m
