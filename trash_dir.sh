# Update the permissions for `/tmp/trash` directory to allow regular users to transfer files to the directory.
sudo mkdir /tmp/trash
sudo chown root:root /tmp/trash
sudo chmod 1777 /tmp/trash

# Create a directory that everyone can access before modifying the rm command.
sudo mkdir -p /usr/local/custom/bin

# Edit the /etc/environment file to add /usr/local/custom/bin to the start of the PATH environment variable.
sudo vim /etc/environment
# PATH="/usr/local/custom/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin"

source /etc/environment
sudo chmod a+x /usr/local/custom/bin

# Create an rm command script
sudo vim /usr/local/custom/bin/rm
# Contents of rm file view rm answers.
sudo chown root:root /usr/local/custom/bin/rm
sudo chmod 755 /usr/local/custom/bin/rm
