#!/bin/bash

# Set the path to the log directory
LOG_DIR="/var/log"

# Set the threshold for deleting old logs (in days)
THRESHOLD_DAYS=$1

# Function to delete old log files
delete_old_logs() {
    find "$LOG_DIR" -type f -name "*.log" -mtime +$THRESHOLD_DAYS -exec rm -f {} \;
    #$LOG_DIR is indicating calling the variable name using with $
    #-type f indiactes the search should only consider regular files (not directories,symbolic links,etc..)
    #-name "*.log" indicates the search to files with names ending in .log file name.
    #-mtime +$THRESHOLD_DAYS:it indcatedfor  the modification time creation for the files to be selected. In this case, it selects files that were last modified more than $THRESHOLD_DAYS days ago.
    # + indicates "more than," and $THRESHOLD_DAYS is the number of days.
    # -exec rm -f {} \;: This command executes the rm -f command on each file that matches the criteria. It removes the files forcefully (-f flag) to avoid prompting for confirmation.
    # '{}' is a placeholder for each matching file, and \; indicates the end of the -exec option.
}

# Main script
echo "Deleting log files older than $THRESHOLD_DAYS days in $LOG_DIR"
delete_old_logs

echo "Old log files deleted successfully."
