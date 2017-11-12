# .bashrc

# $1: directory of configuration stuff, minus trailing slash (ie: ~/.tconfig)

# User specific aliases and functions

# If we're not heading for a prompt, bail out
if [ -z "$PS1" ]; then
	return
fi

# Load everything in autoload.d first
for f in $1/autoload.d/*; do
	source "$f"
done

#Setup keyboard key switch command
alias setkbd="setxkbmap -option caps:escape"
#setkbd
bind 'set show-mode-in-prompt on' #show vim mode inside the prompt

alias md2pdf="pandoc --variable urlcolor=cyan -V geometry:margin=2cm"
alias github2pdf="md2pdf -V geometry:margin=2cm --from=markdown_github"
alias sshfsmediaproxy='sshfs -o ProxyCommand="nc --proxy localhost:8005 --proxy-type socks5 %h %p" 192.168.1.127:/home/ nas'
alias t="tmux"

source $1/modules.d/mvn_aliases ~/wildfly-10.1.0.Final
alias rp="runProject"

alias rb="run_temp_env"

#Execute TMUX
#[ -z "$TMUX" ] && export PWD=$PWD && tmux && exit;

# source files in prompt.d
for f in $1/prompt.d/*; do
	source "$f"
done

#Set custom prompt
if [[ ! -z $(type -t parse_git_branch) ]]; then
	# the command is defined
	export PS1="[\u@\[\033[33m\]\h\[\033[00m\] \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]]\$ "
else
	# the command isn't defined
	export PS1="[\u@\[\033[33m\]\h\[\033[00m\] \W\[\033[32m\]\[\033[00m\]]\$ "
fi

