if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PATH=~/.dotfiles/sbt/bin:$PATH
export TERM=xterm-256color
export PYTHONPATH=/home/joaquin/sites/api
export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")

