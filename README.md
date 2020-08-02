# docker-gun

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
