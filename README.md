# docker-gun

> The is an open source cybersecurity protocol for syncing decentralized graph data.
>
> Official: <https://github.com/amark/gun>

The is unofficial GUN server docker image

## docker-compose.yaml (sample)

```yaml
version: "3"

services:
  gundb:
    image: dimensiondev/gun:latest
    restart: always
    ports:
      - "127.0.0.1:8765:8765"
    volumes:
      - ./data:/app/data
```

## LICENSE

[AGPL 3.0](LICENSE)
