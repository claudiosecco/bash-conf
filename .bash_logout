# ~/.bash_logout: executed by bash(1) when login shell exits.

# when leaving the console clear the screen to increase privacy

if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
 fi

# exclude private commands from history
history -a
# in linux:
#sed -i /ghex/d ~/.bash_history
# in mac
sed -i'.bak' /ghex/d ~/.bash_history
rm .bash_history.bak
