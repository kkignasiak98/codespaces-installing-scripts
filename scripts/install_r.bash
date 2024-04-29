# Based on the terraform documentation 
# https://phoenixnap.com/kb/install-r-ubuntu
sudo sudo apt update

# install helper packages for managing CRAN repositories and certification
sudo apt install software-properties-common dirmngr -y

# Add the signing key
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc

# Add the CRAN repository to your system

sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

# Install the base R and its dependencies
sudo apt install r-base r-base-dev -y

# check if R is installed

if command -v R >/dev/null 2>&1; then
    echo "R is successfully installed"
else
    echo "R installation failed" >&2
    exit 1
fi