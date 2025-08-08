#!/bin/bash

# script will work with machine uptime

showuptime() {
    if [ "$#" -ne 0 ]; then
        echo "Usage: showuptime (no arguments expected)"
        return 1
    fi

    host=$(hostname)
    up=$(uptime -p | cut -c4-)
    since=$(uptime -s)
    cat << EOF
-----
Hostname: ${host}
Machine has been up for ${up}
Running since ${since}
-----
EOF
}

showuptime
