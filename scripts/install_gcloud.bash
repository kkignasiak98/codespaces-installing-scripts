# Based on the Google Cloud documentation
# https://cloud.google.com/sdk/docs/install#linux

# Define constants
GLOUD_VERSION="471"
PROCESSOR_TYPE="x86_64" # x86_64, arm, x86 for 64-bits, 64-bits arm and 32 bits respectively 
ARCHIVE_FILE="google-cloud-cli-${GLOUD_VERSION}.0.0-linux-${PROCESSOR_TYPE}.tar.gz"
WEBSITE_LINK="https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/"
FULL_LINK="${WEBSITE_LINK}${ARCHIVE_FILE}"

# Download the Linux archive file
curl -O ${FULL_LINK}

# Extract the content of the file to your file system (preferably to your home directory)
tar -xf ${ARCHIVE_FILE}

# Remove the archive file after the extraction 
rm $ARCHIVE_FILE

# Run the script
./google-cloud-sdk/install.sh

# Add to the path
GCLOUD_PATH="./google-cloud-sdk//bin"  # 

# Add gcloud to PATH in the user's Bash profile
echo 'export PATH=$PATH:'"$GCLOUD_PATH" >> ~/.bashrc

# Apply the changes to the current session
source ~/.bashrc
echo "Google Cloud SDK added to the PATH. You can now use 'gcloud' command."

# Restart shell
exec bash