#!/bin/bash
if [ -f /config/Library/Application\ Support/Plex\ Media\ Server/Preferences.xml ]
then
  echo "Preferences.xml exists"
else
  echo "no Preferences.xml exists, copying from restore"
  mkdir -p /config/Library/Application\ Support/Plex\ Media\ Server
  cp /update/Preferences.xml /config/Library/Application\ Support/Plex\ Media\ Server/Preferences.xml
fi

rar2fs -o allow_other /mnt /rar2fs --seek-length=1

# Start plex
rm /config/Library/Application\ Support/Plex\ Media\ Server/plexmediaserver.pid
cd /opt/plex/Application
./start.sh
