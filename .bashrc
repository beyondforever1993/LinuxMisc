export PATH=/home/genglei/tools:/home/genglei/opt/arm-2010q1/bin:$PATH
if [ "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
elif [ "$TERM" == "screen" ]; then
    export TERM=screen-256color
fi
