FROM anapsix/alpine-java:8_server-jre_unlimited

RUN  addgroup -S teampostgresql \
 &&  adduser -h /app -G teampostgresql -g '' -S -D -H teampostgresql

RUN  apk add --no-cache --virtual .build-deps unzip curl \
 &&  curl -Lo teampostgresql.zip http://cdn.webworks.dk/download/teampostgresql_multiplatform.zip \
 &&  unzip -o teampostgresql.zip \
 &&  mv teampostgresql/webapp /app \
 &&  chown -R teampostgresql /app \
 &&  ln -s /app /app/webapp \
 &&  apk del .build-deps \
 &&  rm -rf teampostgresql teampostgresql.zip /var/cache/apk/*

ENTRYPOINT ["docker-entrypoint.sh"]
ADD docker-entrypoint.sh /bin/teampostgresql