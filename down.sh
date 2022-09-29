#!/bin/bash
source cli/text-styling.sh
source cli/components.sh

info "Development environment shutting down..."
docker stop sr-db-de-container
docker stop sr-server-de-container
