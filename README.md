# reverse-proxy
Nginx reverse proxy container

```
docker network create \
--driver=bridge \
--internal \
--ip-range=172.1.0.0/24 \
--subnet=172.1.0.0/24 \
--gateway=172.1.0.1 \
reverse-proxy-backend
```
