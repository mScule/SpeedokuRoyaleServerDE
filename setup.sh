#!/bin/bash
source cli/text-styling.sh
source cli/components.sh

# Title
header "SpeedokuRoyaleServer | Development environment - Setup\n"

# Input warning
warning "There are some stuff that you'll have to do before using this setup!\n"

# Prerequisites
header "Make sure that you have..."
point "Docker Desktop up and running."
point "You have installed Dev Containers extension for VS Code."
point "You have installed Docker extension for VS Code."
point "You have the SpeedokuRoyaleServer project cloned in the server directory.\n"

# Checking if the user has prerequisites sorted out
question "Do you have these prerequisites sorted out? [Y/n]"
echo -n "Answer: "
read ANSWER
echo

if [[ $ANSWER == "n" || $ANSWER == "N" ]];
then
    echo "Do the steps above first and come back after that!"
    exit 1
elif [[ $ANSWER == "y" || $ANSWER == "Y" ]];
then
    info "Setup starts.."
else
    echo "I'll take that as no."
    exit 1
fi

echo

# Actual setup
info "building db image..."
docker build -t speedoku-royale-db db/

info "building server de image..."
docker build -t speedoku-royale-server-de server/

success "The server and db image has been built :)"

info "Creating containers from the images..."
docker run -d --name sr-db-de-container speedoku-royale-db
docker run -d --name sr-server-de-container speedoku-royale-server-de

# User opens the environment in VS Code...
header "Opening the environment for the first time:"
point "Open the \"sr-server-de\" container with VS Code Remote explorer."
point "Open the folder from path /home/speedoku-royale-server"
point "Run the de-init.sh"
point "Start the server with dotnet run"
echo "The server should now run"
echo "Test that the server runs properly by heading to https://localhost:8000/swagger"
