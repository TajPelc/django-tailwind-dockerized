#!/bin/bash
# Script to proxy Django management commands into the Django Docker container

# Check if any command is provided
if [ "$#" -eq 0 ]; then
  echo "No arguments provided. Usage: ./django_manage.sh <command>"
  exit 1
fi

# Use the Docker Compose service name 'django' directly
COMMAND="docker-compose exec django python manage.py $@"

# Execute the command
echo "Executing: $COMMAND"
$COMMAND
