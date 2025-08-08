#!/bin/bash

system_info() {
    echo "System Information:"
    echo "---------------------"
    echo "Hostname: $(hostname)"
    echo "Operating System: $(uname -o)"
    echo "Kernel Version: $(uname -r)"
    echo "Architecture: $(uname -m)"
    echo "Uptime: $(uptime -p)"
    echo "Current User: $(whoami)"
}

system_memory_info() {
    echo "Memory Information:"
    echo "---------------------"
    free -h | awk '/^Mem:/ {print "Total: " $2 ", Used: " $3 ", Free: " $4}'
    echo "Swap Memory: $(free -h | awk '/^Swap:/ {print "Total: " $2 ", Used: " $3 ", Free: " $4}')"
    echo "Memory Usage Percentage: $(free | awk '/^Mem:/ {printf("%.2f%%", $3/$2 * 100)}')"
    echo "Swap Usage Percentage: $(free | awk '/^Swap:/ {printf("%.2f%%", $3/$2 * 100)}')"

    echo "Disk Usage:"
    df -h --output=source,size,used,avail,pcent,target | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{print $1 " - Size: " $2 ", Used: " $3 ", Available: " $4 ", Usage: " $5}'
    echo "Inode Usage:"
    df -i --output=source,iused,iavail,ipcent,target | grep -vE '^Filesystem|tmpfs|cdrom' | awk '{print $1 " - Used
}

# Call the function to display system information
system_info

# Call the function to display memory information
system_memory_info
