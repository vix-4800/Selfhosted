#!/bin/bash

SERVICES_FILE="./data/homepage/services.yaml"

if [ ! -f "$SERVICES_FILE" ]; then
    echo "Error: file $SERVICES_FILE not found!"
    exit 1
fi

validate_domain() {
    local domain=$1
    local pattern="^[a-zA-Z0-9][a-zA-Z0-9-]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,}$"
    if [[ "$domain" =~ $pattern ]]; then
        return 0
    else
        return 1
    fi
}

while true; do
    read -p "Enter domain (without (http/https)://, example: example.com): " new_domain
    if validate_domain "$new_domain"; then
        break
    else
        echo "Domain is invalid!"
    fi
done

# Backup
backup_file="${SERVICES_FILE}.bak"
cp "$SERVICES_FILE" "$backup_file"
echo "Backup created: $backup_file"

sed -E "s|(href: http://)([a-zA-Z0-9-]+)\.[^/]+(/.*)|\1\2.${new_domain}\3|" "$SERVICES_FILE" > "${SERVICES_FILE}.tmp" && mv "${SERVICES_FILE}.tmp" "$SERVICES_FILE"

echo "Domain updated: $new_domain"