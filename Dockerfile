FROM dit4c/dit4c-container-x11:debian

RUN curl -sL http://neuro.debian.net/lists/jessie.au.full | \
    tee /etc/apt/sources.list.d/neurodebian.sources.list && \
  apt-key adv --recv-keys --keyserver hkp://pgp.mit.edu:80 0xA5D32F012649A5A9

RUN export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y fsl-core
