#!/bin/bash

# Use aria2 to download torrent on linux
# The current directory containing the files to upload
UPLOAD_DIR="./SucKhoe/"
# Iterate through each file in order, excluding upload.sh
find "${UPLOAD_DIR}" -type f ! -name 'upload.sh' | sort | while IFS= read -r file; do
    echo "Uploading $file..."

    while true; do
        # Perform the upload, install ia from archive.org
        echo "Uploading file $file"
        ia upload --metadata="mediatype:movies" KeoDau_VideoBackup_008 "$file" --retries 10

        # Check the exit code of the upload command
        if [ $? -eq 0 ]; then
            echo "Upload successful, deleting $file..."
            rm "$file"  # Delete the file if upload is successful
            break  # Exit the loop if upload is successful
        else
            echo "Upload failed for $file, retrying..."
            # No additional action needed, the loop will automatically retry
        fi
    done
done
