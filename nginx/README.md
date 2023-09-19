# reverse-proxy

Nginx reverse proxy container

```
./create-network.sh
```

OR

```
docker network create \
--driver=bridge \
--internal \
--ip-range=172.172.0.0/24 \
--subnet=172.172.0.0/24 \
--gateway=172.172.0.1 \
reverse-proxy-backend
```

Then build the image

```
docker build . -t reverse-proxy-nginx
```
