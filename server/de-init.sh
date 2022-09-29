# Checks if the script is started by the dockerfile
if [[ -v DE_ENV ]]; then

    # Installing project dependencies
    dotnet tool install --global dotnet-ef

else
    echo "This file is for the development environment."
    exit 1
fi
