# armv7-syncthing

Docker ARMv7 build of [syncthing](https://syncthing.net)

Running syncthing container:

```
# Container requires 2 volumes: for config and for data.
CONFIG_VOLUME='syncthing-config'
DATA_VOLUME='syncthing-data'
CONTAINER_NAME='syncthing'

docker run -d \
    --name $CONTAINER_NAME \
    --restart always \
    -p 8384:8384 -p 22000:22000 -p 21027:21027/udp \
    -v $CONFIG_VOLUME:/home/syncthing/.config/syncthing \
    -v $DATA_VOLUME:/home/syncthing/Sync \
    mareknovotny/armv7-syncthing
```
