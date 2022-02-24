#!bin/sh

LINUX_DIR="/home/$USER/.config/Typora/themes"
MAC_DIR="/Users/$USER/Library/Application Support/abnerworks.Typora/themes"

function copy_files {
	cp -v rim.css $1		
	cp -v -r rim $1
}

if [[ -d $LINUX_DIR ]]
then
	copy_files $LINUX_DIR
elif [[ -d  $MAC_DIR ]]
then
	copy_files $MAC_DIR
else
	echo "couldn't find theme folder."
fi
