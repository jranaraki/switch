CURRENT=$(prime-select query)
PREVIOUS=$CURRENT

if [ $CURRENT == "intel" ]
then
    sudo prime-select nvidia > /dev/null
    CURRENT="nvidia"
else
    sudo prime-select intel > /dev/null
    CURRENT="intel"
fi

echo Current device is $CURRENT!
