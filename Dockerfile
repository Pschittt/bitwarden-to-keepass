FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install \ 
    bash git \
    python3-pip python3-dev python3-openssl libssl-dev libffi-dev libxml2-dev \
    python3-lxml python3-pycryptodome python3-dateutil python3-future
RUN apt-get -y install nodejs npm 
RUN rm -rf /var/lib/apt/lists/*
RUN pip3 install pykeepass
RUN git clone https://github.com/pschittt/bitwarden-to-keepass.git
WORKDIR bitwarden-to-keepass
RUN npm install -g @bitwarden/cli
