#!/bin/bash
source cli/text-styling.sh
source cli/components.sh

info "Development environment starting up..."
docker start sr-db-de-container
docker start sr-server-de-container
