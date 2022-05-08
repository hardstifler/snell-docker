FROM    ubuntu:18.04
WORKDIR /tmp
RUN apt-get update
RUN apt-get -y install wget 
RUN apt-get -y install unzip
RUN wget -O shell-server.zip https://github.com/surge-networks/snell/releases/download/v3.0.1/snell-server-v3.0.1-linux-amd64.zip
RUN unzip shell-server.zip
RUN chmod +x snell-server
RUN rm -f shell-server.zip
RUN mv snell-server /usr/local/bin/snell-server
ENTRYPOINT [ "/usr/local/bin/snell-server","-c","/etc/snell.conf"]
