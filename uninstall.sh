#!bin/sh

LINUX_DIR="/home/$USER/.config/Typora/themes"
MAC_DIR="/Users/$USER/Library/Application Support/abnerworks.Typora/themes"

function remove_files {
	rm -v $1/rim.css		
	rm -v -r $1/rim
}

if [[ -d $LINUX_DIR ]]
then
	remove_files $LINUX_DIR
elif [[ -d  $MAC_DIR ]]
then
	remove_files $MAC_DIR
else
	echo "couldn't find theme folder."
fi
