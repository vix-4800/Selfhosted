#!/bin/bash

EXCLUDE_DIRS=(".vscode")
ALWAYS_RUN_CONTAINERS=("database" "redis")
AUTO_CONFIRM=false
LOG_FILE="deploy.log"

# Clear logs file
> "$LOG_FILE"

# Check if docker-compose is installed
if ! command -v docker compose &> /dev/null; then
    echo "Error: docker-compose is not installed!" >&2
    exit 1
fi

# Parse command-line options
while getopts "ay" opt; do
    case ${opt} in
        a ) AUTO_CONFIRM=true ;;
        y ) AUTO_CONFIRM=true ;;
        \? ) echo "Usage: $0 [-a|-y] for auto confirm" >&2
             exit 1 ;;
    esac
done

# Function to log messages
function log_message() {
    local level=$1
    local message=$2
	local timestamp=$(date +'%Y-%m-%d %H:%M:%S')

    echo "[$timestamp] [$level] $message" >> "$LOG_FILE"
}

# Create network
if ! docker network ls | grep -q "proxy_network"; then
    log_message "INFO" "Creating network: proxy_network"
    docker network create proxy_network
fi

start_dir=$(pwd)

# Start required services
for dir in "${ALWAYS_RUN_CONTAINERS[@]}"; do
    if [ -d "$dir" ] && [ -f "$dir/docker-compose.yml" ]; then
        log_message "INFO" "Starting required service: $dir"
        (
            cd "$dir"
			
            if docker compose up -d >> "$LOG_FILE" 2>&1; then
                log_message "SUCCESS" "Successfully started: $dir"
            else
                log_message "ERROR" "Failed to start $dir: exit code: $?"
            fi
        )

        cd "$start_dir" || exit 1
    else
        log_message "WARN" "Required service $dir not found or docker-compose.yml not found"
    fi
done

# Start all other services
for dir in */; do
    if [[ " ${EXCLUDE_DIRS[@]} " =~ " ${dir%/} " ]] || [[ " ${ALWAYS_RUN_CONTAINERS[@]} " =~ " ${dir%/} " ]]; then
        log_message "INFO" "Skipped: $dir"
        continue
    fi

    if [ ! -f "$dir/docker-compose.yml" ]; then
        log_message "WARN" "docker-compose.yml not found in $dir"
        continue
    fi

    if [ "$AUTO_CONFIRM" = false ]; then
        echo -en "\033[1;34m"
        read -p "Start $dir? [y/N] " -n 1 -r
        echo -en "\033[0m"
        echo

        if [[ ! $REPLY =~ ^[Yy]$ ]]; then
            log_message "INFO" "Skipped: $dir"
            continue
        fi
    fi

    log_message "INFO" "Starting: $dir"
    (
        cd "$dir"

        if docker compose up -d >> "$LOG_FILE" 2>&1; then
            log_message "SUCCESS" "Successfully started: $dir"
        else
            log_message "ERROR" "Failed to start: $dir - exit code: $?"
        fi
    )

    cd "$start_dir" || exit 1
done