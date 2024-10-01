#!/bin/sh

LINK="https://www.rtd-denver.com/files/gtfs/google_transit_flex.zip"
NAME="rtd"
DEST_FOLDER="/root/config/gtfs"
DEST_FILE="${DEST_FOLDER}/${NAME}.zip"

# Download the GTFS file
wget -O $DEST_FILE $LINK

# Remove the old GTFS database
rm -f "${DEST_FOLDER}/${NAME}.sqlite"

# New GTFS database created from ZIP automatically on reboot
echo "New GTFS data downloaded. Please reboot the server to apply changes."
