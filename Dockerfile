# I chose to use 14.04, replace with whatever version you want to use.
FROM ubuntu:14.04

WORKDIR /bencher
ADD . /bencher

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

# Install python-gtop.
RUN dpkg -i ./dep/python-gtop_2.32.0+dfsg-1_amd64.deb; exit 0
RUN apt-get update
RUN apt-get install -f -y

CMD ["bash"]
