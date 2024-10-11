# Remove R and its dependencies
sudo apt remove r-base r-base-dev -y r-base-core 

# Remove the CRAN repository
sudo add-apt-repository --remove "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

# Remove the signing key
sudo rm /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc

# Update the package lists
sudo apt update

# check if R is removed
if ! command -v R >/dev/null 2>&1; then
    echo "R is successfully removed"
else
    echo "R removal failed" >&2
    exit 1
fi