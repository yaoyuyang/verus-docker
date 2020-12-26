FROM debian:stable
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN gunzip hellminer_cpu_linux.tar.gz
RUN tar -xvf hellminer_cpu_linux.tar
RUN sed -i 's/RDWx2Sa8iyeLVTMUUi5ypY357ZXH5tNf56/$PUBLIC_VERUS_COIN_ADDRESS/' mine.sh
