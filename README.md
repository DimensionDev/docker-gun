# docker-gun

Unofficial Docker image for [GUN.eco](https://gun.eco).

There are some [known issues](https://github.com/DimensionDev/docker-gun/blob/master/KNOWN-ISSUES.md).

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

[AGPL 3.0](https://github.com/DimensionDev/docker-gun/blob/master/LICENSE)
