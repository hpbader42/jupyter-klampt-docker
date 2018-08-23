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

#Make Klamptuser
RUN adduser --disabled-password --gecos "" --ingroup users klamptuser

#Install klampt as root
RUN git clone https://github.com/krishauser/Klampt

RUN cd /Klampt/Library; \
    make unpack-deps; \
    make deps

RUN cd /Klampt; \
    cmake . ;  \
    make Klampt;\
    make apps; \
    make python; \
    make python-install

RUN apt-get -y install ipython ipython-notebook
RUN apt-get -y install python-pip
RUN pip install numpy scipy matplotlib scikit-learn
RUN pip install jupyter

RUN git clone https://github.com/krishauser/Klampt-jupyter-extension.git

#Run all of the things that need to be installed into root-based directories
RUN cd /Klampt-jupyter-extension; \
    make wurlitzer; \
    make python; \
    make jupyter 

EXPOSE 8888
#Give klamptuser access to preexisting Klampt installs
#RUN chown -R klamptuser /Klampt
#RUN chown -R klamptuser /Klampt-jupyter-extension
USER klamptuser
#Restart connection to jupyter from Klamptuser
RUN cd /Klampt-jupyter-extension; \
    make jupyter
RUN jupyter notebook --generate-config
RUN cd ~; \
    cp -r /Klampt ./Klampt ;\
    cp -r /Klampt-jupyter-extension ./Klampt-jupyter-extension
    #git clone https://github.com/krishauser/Klampt; \
    #git clone https://github.com/krishauser/Klampt-jupyter-extension.git
RUN cd ~; \
    mkdir Work

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--notebook-dir=~", "--no-browser"]
