FROM ubuntu:xenial

LABEL maintainer="Sergey Mishin <sergei.a.mishin@gmail.com>"

RUN cat /etc/lsb-release

# Add mongo (mongodb-org) repo
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
RUN echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list
RUN apt update
RUN apt install -y python3 mongodb-org git python3-pip

RUN python3 --version; pip3 --version

RUN pip3 install --upgrade pip
RUN pip3 install pymongo

EXPOSE 27017

RUN git clone https://github.com/qezz/pystorage.git pystorage
COPY config.json /pystorage/test/config_example.json
RUN ls -la pystorage; cat /pystorage/test/config_example.json

ENTRYPOINT ["/bin/bash"]
CMD cd pystorage && \
      python3 -m unittest -v && \
      mongo  --host "mongo" -u "admin" -p "admin" --authenticationDatabase "admin" \
        --eval "db = db.getSiblingDB('admin'); db.shutdownServer()"; && \
      echo "Mongo should be closed now."

