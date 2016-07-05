FROM fafanoulele/rpi-mono

MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN apt-get update && apt-get install -y curl libcurl3 unzip wget && \ 
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN mkdir -p /update
ADD update.sh /update/update.sh
ADD start.sh /update/start.sh

EXPOSE 9117
#VOLUME ["/config","/data"]

ENV RUN_AS_ROOT="true" \
    CHANGE_DIR_RIGHTS="false" \
    CHANGE_CONFIG_DIR_OWNERSHIP="true" \
    HOME="/config"

WORKDIR /update
RUN sh update.sh
CMD sh start.sh
