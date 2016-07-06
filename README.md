# Media server for Raspberry Pi
## Contents
* [Plex](https://www.plex.tv/) - Media streaming server
* [Sonarr](https://github.com/Sonarr/Sonarr) - Smart PVR for newsgroup and bittorrent users, using modified version [here](https://github.com/lowet84/Sonarr)
* [Deluge](https://github.com/deluge-torrent/deluge) - BitTorrent client
* [Jackett](https://github.com/Jackett/Jackett) - Tracker proxy


## Domain setup
set env DOMAIN to the domain you want to use. (http://plex.rpi etc.)

```
export DOMAIN=rpi
```

## Prepare files
run prepare_all.sh first to download latest plex before build

```
sh prepare_all.sh
```
