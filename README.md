# docker-gun

[![Docker Automated Build][shield-automated]][docker-image]
[![Get your own image badge on microbadger.com][shield-microbadger]][micro-badger]
[![Docker Pulls][shield-pulls]][docker-image]
[![Docker Stars][shield-stars]][docker-image]

Pull from the [Docker Hub][docker-image] [![Image Version][shield-version]][micro-badger].

[docker-image]: https://hub.docker.com/r/dimensiondev/gun
[micro-badger]: https://microbadger.com/images/dimensiondev/gun
[shield-automated]: https://img.shields.io/docker/automated/dimensiondev/gun.svg
[shield-microbadger]: https://images.microbadger.com/badges/image/dimensiondev/gun.svg
[shield-version]: https://images.microbadger.com/badges/version/dimensiondev/gun.svg
[shield-pulls]: https://img.shields.io/docker/pulls/dimensiondev/gun.svg
[shield-stars]: https://img.shields.io/docker/stars/dimensiondev/gun.svg

Unofficial Docker image for [GUN.eco](https://gun.eco).

There are some [known issues](https://github.com/DimensionDev/docker-gun/blob/master/KNOWN-ISSUES.md).

## command line

```console
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
