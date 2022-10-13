# SpeedokuRoyaleServer | Development environment

Run the shell scripts in git bash by writing command
`bash <SCRIPT NAME HERE WITH IT'S FILE EXTENSION>`

## Setup

1. Run the `install.sh` *Make sure that you have the things installed that the
   setup asks for! Don't lie to it. The setup won't work right if you do :(*

2. After the setup has done it's job, you should be able to open the project
   with the VS Code Remote Explorer.

![img1](/img/img1.png)

3. From docker container, open path `home/speedoku-royale-server`

4. Write `dotnet ef database update`

5. After that, write `dotnet run`

6. Open port 8000 manually

![img2](/img/img2.png)

5. Head to `http://127.0.0.1:8000/swagger/index.html` to check that the server
   is up and running!
***REMEMBER TO CHECK THAT YOU ACCESS THE SITE WITH HTTP PROTOCOL!***
***HTTPS IS CURRENTLY NOT SUPPORTED BY THE SERVER***

## How to use

***MAKE SURE THAT YOU HAVE DOCKER DESKTOP ON***

To shut down the de, use `down.sh`.

To fire the de back up, use `up.sh`.

## Uninstall

If you feel that the setup messed up your docker big time, you can uninstall
everything with `uninstall.sh`. Do this only if you don't have anything
important in the de, since every file in it will be removed.
