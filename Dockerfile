FROM nginx:alpine

RUN \
  echo "*** installing dependencies ***" && \
  apk update --no-cache && \
  apk upgrade --no-cache && \
  apk add openssl curl && \
  rm -rf /var/cache/apk/*

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./ca-certs/root-ca.pem /usr/local/share/ca-certificates/root-ca.crt

RUN cat /usr/local/share/ca-certificates/root-ca.crt >> /etc/ssl/certs/ca-certificates.crt
