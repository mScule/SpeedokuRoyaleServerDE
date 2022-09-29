# Checks if the script is started by the dockerfile
if [[ -v DE_ENV ]]; then
    # Moving into the project folder
    cd SpeedokuRoyaleServer

    # Installing project dependencies
    dotnet add package Microsoft.EntityFrameworkCore.Tools

else
    echo "This file is for the development environment."
    exit 1
fi
