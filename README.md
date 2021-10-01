# reverse-proxy
Nginx reverse proxy container

## Example `docker-compose.yml`

```yml
version: "3"

services:
  reverse-proxy:
    container_name: reverse-proxy
    image: reverse-proxy
    ports:
      - 443:443/tcp
    environment:
      TZ: ${TZ}
    restart: unless-stopped
```

## Example `.env`

```
TZ=America/Los_Angeles
```
