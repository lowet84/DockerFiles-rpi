FROM fafanoulele/rpi-mono

MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN apt-get update && apt-get install -y curl libmediainfo0 unzip wget libfuse2 && \ 
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN mkdir -p /update
ADD update.sh /update/update.sh
ADD start.sh /update/start.sh
ADD libunrar.so /usr/lib/
ADD rar2fs /usr/bin/
RUN chmod +x /usr/bin/rar2fs
RUN mkdir -p /rar2fs

EXPOSE 8989
EXPOSE 9898

ENV RUN_AS_ROOT="true" \
    CHANGE_DIR_RIGHTS="false" \
    CHANGE_CONFIG_DIR_OWNERSHIP="true" \
    HOME="/config"

WORKDIR /update
RUN sh update.sh
CMD sh start.sh
