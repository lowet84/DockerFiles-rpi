#!/bin/bash

rm plex.tar
export DISTRO=synology
export BUILD=linux-synology-armv7
curl https://raw.githubusercontent.com/mrworf/plexupdate/master/plexupdate.sh | bash -s -- -p
mv PlexMediaServer* plex.tar
