# Switch
This is a small script to switch between Intel and Nvidia graphics cards. 

## Requirements
 - Your username should have `sudo` privilages
 - The target system must run Linux and have both Intel and Nvidia graphics cards. To make sure you have the required hardware, run `lspci | grep "VGA"` in the terminal. The output should look like the followings:

```
name@name-hostname:~$ lspci | grep "VGA"
00:02.0 VGA compatible controller: Intel Corporation CoffeeLake-H GT2 [UHD Graphics 630]
01:00.0 VGA compatible controller: NVIDIA Corporation GP107GLM [Quadro P1000 Mobile] (rev a1)
```

 - Make sure the Nvidia driver is correctly installed by running 'nvidia-smi' in the terminal. If the output looks like the follwoings, don't worry! This is only because you are using the Intel raphics card and `nvidia-smi` cannot communicate with the Nvidia one.

```
name@name-hostname:~$ nvidia-smi
NVIDIA-SMI has failed because it couldn't communicate with the NVIDIA driver. Make sure that the latest NVIDIA driver is installed and running.
```
## How it works
To run the script, download `switch.sh` from the repo. Then, open the terminal, navigate to the folder you have just downloaded `switch.sh` in (usually `Downloads`), and run the following command to make the shell file executable.

```
name@name-hostname:~$ cd Downloads/
name@name-hostname:~/Downloads$ chmod +x switch.sh
name@name-hostname:~/Downloads$ 
```

Now, run the script to switch from the current (in this case, Intel) graphics card to the other one (i.e. Nvidia): 

```
name@name-hostname:~/Downloads$ ./switch.sh 
[sudo] password for name: 
Current device is nvidia!
```
Now reboot the system, and `nvidia-smi` should work and generate an output similar to the followings:

```

```

To switch back to the other graphics card, run `switch.sh` again:
```
name@name-hostname:~/Downloads$ ./switch.sh 
[sudo] password for name: 
Current device is intel!
```
