alias edit='nano ~/config.json'
alias run='bash ~/ccminer/start.sh'
if [[ $- == *i* ]] && [ -z "$TERMUX_AUTORUN" ] && [ -f ~/ccminer/start.sh ]; then
   	export TERMUX_AUTORUN=1
  	bash ~/ccminer/start.sh
fi
