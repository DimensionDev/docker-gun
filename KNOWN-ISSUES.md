# Knwon issues

## worker_connections are not enough while connecting to upstream

```plain
2020/08/03 04:08:04 [alert] 681#681: *700685 768 worker_connections are not enough while connecting to upstream, client: *.*.*.*, server: gun.maskbook.com, request: "GET /gun HTTP/1.1", upstream: "http://127.0.0.1:8765/gun", host: "gun.maskbook.com"
```

workaround on `/etc/nginx/nginx.conf`

```plain
events {
  worker_connections 10000;
  multi_accept on;
}
```
