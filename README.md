# docker-gun

[![Docker Automated Build][shield-automated]][docker-image]
[![Docker Pulls][shield-pulls]][docker-image]
[![Docker Stars][shield-stars]][docker-image]

[docker-image]: https://hub.docker.com/r/dimensiondev/gun
[shield-automated]: https://img.shields.io/docker/automated/dimensiondev/gun.svg
[shield-pulls]: https://img.shields.io/docker/pulls/dimensiondev/gun.svg
[shield-stars]: https://img.shields.io/docker/stars/dimensiondev/gun.svg

Unofficial Docker image for [GUN.eco](https://gun.eco).

There are some [caveats](https://github.com/DimensionDev/docker-gun/blob/master/caveats.md).

## command line

```bash
docker run -p 8765:8765 dimensiondev/gun
```

## docker-compose.yaml (sample code)

```yaml
version: "3"

services:
  gundb:
    image: dimensiondev/gun:latest
    restart: always
    ports:
      - "127.0.0.1:8765:8765"
    volumes:
      # ./options.json:/app/options.json
      # ./files:/app/files # control web server static files
      - ./data:/app/data
```

## LICENSE

[AGPL 3.0](https://github.com/DimensionDev/docker-gun/blob/master/LICENSE)
