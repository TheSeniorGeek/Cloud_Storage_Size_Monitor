#!/bin/zsh

# ------------------------------------------------------------
# Cloud Storage Folder Size Monitor (.command)
# ------------------------------------------------------------

# Define targets (Update paths if your volume name differs)
BASE_DIR="/Volumes/OneDrive_Jim/.CloudStorage"
DATA_DIR="$BASE_DIR/Data"
SYSTEM_DIR="$BASE_DIR/System"

# Polling interval (5 minutes = 300 seconds)
INTERVAL_SECS=180

# Helper: Get human-readable and raw MB sizes
get_dir_size() {
    local target_path="$1"
    if [[ -d "$target_path" ]]; then
        # du -sh gives formatted size (e.g., 294G, 185M)
        local size_str=$(du -sh "$target_path" 2>/dev/null | awk '{print $1}')
        echo "${size_str:-0B}"
    else
        echo "Not Found"
    fi
}

echo "============================================================"
echo " Cloud Storage Size Monitor"
echo " Monitoring Target: $BASE_DIR"
echo " Interval: Every 5 Minutes"
echo " Press [Ctrl + C] in this window at any time to stop."
echo "============================================================"
echo ""

while true; do
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

    DATA_SIZE=$(get_dir_size "$DATA_DIR")
    SYSTEM_SIZE=$(get_dir_size "$SYSTEM_DIR")

    echo "[$TIMESTAMP]"
    echo "  -> Data Folder:   $DATA_SIZE  ($DATA_DIR)"
    echo "  -> System Folder: $SYSTEM_SIZE  ($SYSTEM_DIR)"
    echo "------------------------------------------------------------"

    # Wait 5 minutes before the next reading
    sleep $INTERVAL_SECS
done