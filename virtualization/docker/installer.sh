#!/bin/bash
### Main Installer ###
INSTALLER_SCRIPT="installer/main.sh"
. $INSTALLER_SCRIPT

checkRoot
conlogo
connotice "Starting up script..."
sleep 3

### Docker Installer ###
# Update the system
clear
coninfo "Updating the server..."
sleep 1s

apt-get -y update && apt-get -y upgrade

# Install docker
clear
coninfo "Installing docker from the package manager..."
sleep 1s

apt-get install -y docker.io

# Launch docker
clear
coninfo "Launching the docker daemon..."
sleep 1s

systemctl enable --now docker

# Add user to the docker group
clear
coninfo "Adding the current user to the docker group..."
sleep 1s

usermod -aG docker "$(whoami)"

# Finished
clear
echo "***********************************************************"
echo "                    SETUP COMPLETE"
echo "***********************************************************"
echo ""
echo " Docker has been successfully installed"
echo " Try it out with: docker run hello-world"
echo ""
