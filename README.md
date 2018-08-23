# jupyter-klampt-docker

# About

**Important Note**

This repository contains everything that is needed to run Jupyter notebooks with Klampt integration.
These run in containers which is essesntially a VM configured to have certain things set up. 
It makes it easy to distribute common copies to all people. 

HOWEVER, data can be a little harder to extract from a VM. 
As a result, this repository includes a Work folder which links up to a Work folder in the container.

**DO ANY WORK YOU WANT TO SAVE IN THE "WORK" FOLDER.**

That folder is set up to make sure data persists. If your container crashes, data in other folders can be lost. Data in the Work folder will be backed up on your local machine. Also, if you want to add new assignments into your container, use your Work folder to transfer them. 

Instructions:

## Unix:
1. Follow the instructions on Docker's website to install Docker for Linux 

   https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-repository

2. Follow the instructions on Docker's website to install Docker-compose for Linux

   https://docs.docker.com/compose/install/#install-compose

3. Clone this repo
4. Run "docker-compose up" from the cloned repository. This will take a long time the first time.
5. Open a browser and navigate to where Jupyter is being hosted
   
   a. On normal Linux, this should be 192.0.0.1:8888/
   
   b. On a Duke VM, this will be vcm-XXXX.vm.duke.edu:8888/ 
   
      Note that the "X"s will be replaced by actual numbers

6. The password to login is Klampt. Alternatively, you can add Klampt after the final '/' to login directly.
7. If you want to change your password, change the text in docker-compose.yaml that comes after "NotebookApp.token="

## Windows:
0. Register a Docker ID. You may need one to download Docker. 
1. Follow the instructions on Docker's website to install Docker on Windows

    a. If you have Windows 10 Pro, Enterprise, or Education, lookup instructions for Downloading and Installing Docker
    
    b. If you have Windows 10 Home or a different edition not mentioned above, download Docker Toolbox
2. Clone this repo
3. Open your Docker terminal that should have been installed as part of Step 2
4. Navigate to the cloned repo and run "docker-compose up". This will take a while the first time. 
5. Open a browser and navigate to where Jupyter is being hosted

    For me, this is 192.168.99.100:8888/
    
    This ip address is determined by Docker - it may be standard, but it should be stated when the Docker shell starts
    
    You may want to restart the shell in order to see this number
6. The password to login is **Klampt**. Alternatively, you can log in directly by going to 192.168.99.100:8888/Klampt
7. If you want to change your password, change the text in docker-compose.yaml that comes after "NotebookApp.token="

## MAC:
0. Register a Docker id - you need one to download Docker from the Docker store for MAC
1. Follow the instructions on Docker's website to install Docker on MAC

   a. If you have a MAC from after 2010, you should be able to just install Docker
   
   b. If you have a MAC from earlier, you may need to install Docker-toolbox. Read the page.
2. Open your terminal and clone this repo - install git if you need to
3. Open your terminal and run "docker-compose up" from inside the cloned folder. This will take a while the first time.
4. Open a browser and navigate to where Jupyter is being hosted

   On MAC, you appear to be able to use localhost:8888/ or 192.0.0.1:8888/
5. **Klampt** is the password to login. Alternatively, you can go to 192.0.0.1:8888/Klampt to login directly.
6. If you want to change your password, change the text in docker-compose.yaml that comes after "NotebookApp.token="
