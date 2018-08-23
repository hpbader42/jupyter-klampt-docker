# jupyter-klampt-docker

*IMPORTANT NOTE:*
This repository contains everything that is needed to run Jupyter notebooks with Klampt integration.
These run in containers which is essesntially a VM configured to have certain things set up. 
It makes it easy to distribute common copies to all people. 

HOWEVER, data can be a little harder to extract from a VM. 
As a result, this repository includes a Work folder which links up to a Work folder in the container.
DO ANY WORK YOU WANT TO SAVE IN THE WORK FOLDER.

That folder is set up to make sure data persists. If your container crashes, data in other folders can be lost. Data in the Work folder will be backed up on your local machine. Also, if you want to add new assignments into your container, use your Work folder to transfer them. 

Instructions:

Unix:
1. Follow the instructions on the website to install Docker for Linux 

2. Follow the instructions on the website to install Docker-compose for Linux

3. Clone this repo

4. Run "docker-compose up" from the downloaded repository

5. Open a browser and navigate to where Jupyter is being hosted

5a. On normal Linux, this should be 192.168.0.1:8888/'some_token'

5b. On a Duke VM, this will be vcm-XXXX.vm.duke.edu:8888/'some_token'
    Note that the "X"s will be replaced by actual numbers

6. Copy and paste the token output to log in to Jupyter 

Windows:
1. Follow the instructions to install docker on Windows

1a. If you have Windows 10 Pro, Enterprise, or Education, lookup instructions for Downloading and Installing Docker

1b. If you have Windows 10 Home or a different edition not mentioned above, download Docker Toolbox

2. Clone this repo
3. Open your Docker terminal that should have been installed as part of Step 2
4. Navigate to the cloned repo and run "docker-compose up" 
5. Open a browser and navigate to where Jupyter is being hosted

For me, this is 192.168.99.100:8888/'some_token'

This ip address is determined by Docker - it may be standard, but it should be stated when the Docker shell starts

You may want to restart the shell in order to see this number

6. Copy and paste the token output to log in to Jupyter.

On Windows, for me, this involves highlighting the correct area and then right clicking. The text selected will be copied to the clipboard and can be pasted

MAC:
?
