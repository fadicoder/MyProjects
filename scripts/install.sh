# Query dpkg to get the version of the currently installed gimp package.
# The command returns false if the package is not installed.
if version=$(dpkg-query -W -f='${Version}' docker 2>/dev/null); then 
    printf 'Docker already installed! \n'
    exit
fi

add-apt-repository ppa:otto-kesselgulasch/gimp &&
apt-get update &&
apt-get install docker
