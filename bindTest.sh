#!/bin/bash

# Function to display script usage information
function show_usage {
    echo "Usage: $0 [ -o | --openPorts ] [ -mx | --maxPorts MAX ] [ -c | --connect IP_DESTINATION ]"
    echo "Examples:"
    echo "  $0 -o -mx 100        # Open 100 ports locally"
    echo "  $0 -c 192.168.1.1    # Test connection to IP 192.168.1.1 on all 65535 ports"
    echo "  $0 -c 192.168.1.1 -mx 50  # Test connection to IP 192.168.1.1 on up to 50 ports"
    exit 1
}

# Initializing default variables
open_ports=false
max_ports=65535
connect=false
ip_destination=""

# Checking if any arguments were provided
if [ "$#" -eq 0 ]; then
    show_usage
fi

# Processing command line arguments
while [ $# -gt 0 ]; do
    case "$1" in
        -o | --openPorts)
            open_ports=true
            ;;
        -mx | --maxPorts)
            shift
            max_ports=$1
            ;;
        -c | --connect)
            shift
            connect=true
            ip_destination=$1
            ;;
        *)
            show_usage
            ;;
    esac
    shift
done

# Checking if no option was provided
if [ "$open_ports" = false ] && [ "$connect" = false ]; then
    show_usage
fi

# Checking options and performing corresponding actions
if [ "$open_ports" = true ]; then
    echo "Opening Ports..."

    for ((port = 1; port <= $max_ports; port++)); do
        nc -vnlp $port &
        sleep 2
    done

    echo "Ports opened"
    netstat -nlpt
fi

if [ "$connect" = true ]; then
    echo "Testing ports for $ip_destination ..."

    for ((port = 1; port <= $max_ports; port++)); do
        nc -vn $ip_destination $port &
        sleep 2
    done
fi
