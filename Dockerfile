FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y install \
    build-essential \
    wget \
    sudo \
    g++ \
    cmake \
    git \
    libboost-system-dev \
    libboost-thread-dev \
    freeglut3 \
    freeglut3-dev \
    libglpk-dev \
    python-dev \
    python-opengl \
    libxmu-dev \
    libxi-dev \
    libqt4-dev \
    libassimp-dev \
    ffmpeg \
    doxygen \
    qt5-default \
    libtf-dev && \
    apt-get clean

#Install Klampt
RUN cd ~; \
    git clone https://github.com/krishauser/Klampt

RUN adduser --disabled-password --gecos "" --ingroup users klamptuser

RUN cd ~/Klampt/Library; \
    make unpack-deps; \
    make deps

#make in klamptuser - build in root

RUN cd ~/Klampt; \
    cmake . ;  \
    make Klampt;\
    make apps; \
    make python; \
    make python-install

#Klampt installed
#Install Jupyter as root
RUN apt-get -y install ipython ipython-notebook
RUN apt-get -y install python-pip
RUN pip install jupyter


RUN cd ~; \
    git clone https://github.com/krishauser/Klampt-jupyter-extension.git

RUN cd ~/Klampt-jupyter-extension; \
    make wurlitzer; \
    make python; \
    make jupyter 

EXPOSE 8888
USER klamptuser
RUN cd ~; \
    git clone https://github.com/krishauser/Klampt; \
    git clone https://github.com/krishauser/Klampt-jupyter-extension.git
RUN cd ~; \
    mkdir work

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--notebook-dir=~", "--no-browser"]
VOLUME ~/work
