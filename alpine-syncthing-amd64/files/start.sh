#!/bin/sh
if ! getent passwd ${SYNCTHING_USERID}; then
    echo "Creating new syncthing account with user ID ${SYNCTHING_USERID}"
    adduser -D -g "Syncthing Account" -u ${SYNCTHING_USERID} syncthing
fi

if [[ $(stat -c %U /srv/config) != syncthing ]]; then
    echo "/Config volume has incorrect ownership, fixing"
    chown -R syncthing:syncthing /srv/config
fi

if [[ $(stat -c %U /srv/data) != syncthing ]]; then
    echo "/Data volume has incorrect ownership, fixing"
    chown -R syncthing:syncthing /srv/data
fi

if [[ ! -f /srv/config/config.xml ]]; then
    echo "Config is not found, generating"
    /bin/gosu ${SYNCTHING_USERID} /bin/syncthing -generate="/srv/config"
    sed -e "s/id=\"default\" path=\"\/root\/Sync\"/id=\"default\" path=\"\/srv\/data\/default\"/" -i /srv/config/config.xml
    sed -e "s/<address>127.0.0.1:8384/<address>0.0.0.0:8384/" -i /srv/config/config.xml
fi

exec /bin/gosu ${SYNCTHING_USERID} /bin/syncthing -home "/srv/config" -no-browser $@
