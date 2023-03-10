# Blueberry
 Currently Playing Spotify Song As Wallpaper for KDE




# Images 

![1](https://user-images.githubusercontent.com/30321729/145736816-33fa7ca4-7e9c-4299-9ea2-dbfe0acc78ab.png)

![2](https://user-images.githubusercontent.com/30321729/145736819-589ab479-38f9-4b61-9be9-61a02567dab4.png)

![3](https://user-images.githubusercontent.com/30321729/145736824-894d5452-89af-444f-b3f6-53925f9b4dce.png)


![4](https://user-images.githubusercontent.com/30321729/145736827-44439bc5-7ecc-4113-beda-442b0f210639.png)


![5](https://user-images.githubusercontent.com/30321729/145736829-f9a9aaed-2c9f-41aa-b490-2e77ee76b114.png)



# Usage

1. Download the repo 
2. Start listening to music on Spotify
3. Enter your spotify credentials in the txt file
4. Run commands in requirments.txt or setup the virtual enviroment
5. Run the main.py file
6. Log in if web page comes up
7. Copy link of web page after signing in and paste into teminal
8. Profit?

## Installation

Now, to run the script after the system boots, you'll have to follow a few but easy steps:
1. Run `make config`, to set the appropriate parameters on the *blueberry.service*.
2. Now, to enable the *systemd* service, run the make command `make setup`, which does and runs the following (requires **sudo** permissions):
   1. Places the service file inside */etc/systemd/user* (requires **sudo**)
   1. Assign the appropriate permission to the service file by running `sudo chmod 644 /etc/systemd/user/blueberry.service`. (requires **sudo**)
   3. Reload the systemd daemon by running `systemctl --user daemon-reload`
   2. Enable the service by running `systemctl --user enable blueberry.service`

And that's all, from now on, after the system boots, the script will be running in the background.

