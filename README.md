# Docker image for launch TransmissionBT (daemon)

This docker image allows to start lastest version of TransmissionBT (daemon)

## Usage

```
docker run -p 9091:9091 -p 51413:51413/udp -p 51413:51413 -e PEER_PORT=51413 -e RPC_USERNAME=username -e RPC_PASSWORD=password arnaudpiroelle/transmissionbt
```

This will store the workspace in /transmission. All sync data lives in there.
You will probably want to make that a persistent volume (recommended):

```
docker run -v /your/home:/transmission -p 9091:9091 -p 51413:51413/udp -p 51413:51413 -e PEER_PORT=51413 -e RPC_USERNAME=username -e RPC_PASSWORD=password arnaudpiroelle/transmission
```

This will store the downloads data in /your/home on the host.