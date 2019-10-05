WHATTOFIND="*.sd9"; SOURCE=""; TARGET=".wav"; find $WHATTOFIND -type f -exec dd if={} of="{}$TARGET" ibs=32 skip=1 \; 
