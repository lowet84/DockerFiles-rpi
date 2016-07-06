FROM resin/rpi-raspbian
MAINTAINER Fredrik Löwenhamn <fredrik.lowenhamn@gmail.com>

RUN apt-get update
RUN apt-get install -f wget libfuse2 curl


RUN mkdir -p /rar2fs
RUN mkdir -p /update 
ADD Preferences.xml /update/Preferences.xml

RUN mkdir -p /update/temp
WORKDIR /update/temp 

RUN ln -s /lib/arm-linux-gnueabihf/ld-linux.so.3 /lib/ld-linux.so.3

ENV RUN_AS_ROOT="true" \
    CHANGE_DIR_RIGHTS="false" \
    CHANGE_CONFIG_DIR_OWNERSHIP="true" \
    HOME="/config" \
    USEMOUNT="true" \
    DISTRO="synology" \
    BUILD="linux-synology-armv7"

COPY plex.tar /update/temp/plex.tar
RUN tar -xvf plex.tar
RUN mkdir -p /opt/plex/Application
RUN tar -xvf package.tgz -C /opt/plex/Application
RUN cp /opt/plex/Application/Resources/start.sh /opt/plex/Application/
RUN chmod +x /opt/plex/Application/start.sh

WORKDIR /update
RUN rm -r temp

EXPOSE 32400

ADD start.sh /update/start.sh
ADD libunrar.so /usr/lib/
ADD rar2fs /usr/bin/
RUN chmod +x /usr/bin/rar2fs

CMD sh start.sh
