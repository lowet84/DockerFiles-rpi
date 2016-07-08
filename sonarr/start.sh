#!/bin/bash
rar2fs -o allow_other /mnt /rar2fs --seek-length=1

mono /opt/NzbDrone/NzbDrone.Console.exe --no-browser -data=/config/sonarr & wait
