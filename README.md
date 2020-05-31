# TeamPostgreSQL Container

- Based on [alpinelinux with Oracle JRE](http://hub.docker.com/r/anapsix/alpine-java)
- Used scripts from [steigr/docker-teampostgresql](https://github.com/steigr/docker-teampostgresql)
	- Removed [Caddy](https://github.com/caddyserver/caddy) proxy (v0.95) as it [breaks file uploads](https://github.com/caddyserver/caddy/issues/1480)

## Configuration

### TeamPostgreSQL
* `$TEAMPOSTGRESQL_PORT` (default: `8082`)
* `$TEAMPOSTGRESQL_ADMIN_USER` (default: unset)
* `$TEAMPOSTGRESQL_ADMIN_PASSWORD` (default: `$TEAMPOSTGRESQL_ADMIN_USER`)
* `$TEAMPOSTGRESQL_ANONYMOUS_ACCESS` (default `40` or `10` if `$TEAMPOSTGRESQL_ADMIN_USER` is set )
* `$TEAMPOSTGRESQL_COOKIES_ENABLED` (default: `true`)
* `$TEAMPOSTGRESQL_DATA_DIRECTORY` (default: `/tmp`)
* `$TEAMPOSTGRESQL_HTTPS` (default: `DISABLED`)
* `$TEAMPOSTGRESQL_DEFAULT_HOST` (default: unset)
* `$TEAMPOSTGRESQL_DEFAULT_PORT` (default: `5432`)
* `$TEAMPOSTGRESQL_DEFAULT_USERNAME` (default: `postgres`)
* `$TEAMPOSTGRESQL_DEFAULT_PASSWORD` (default: `postgres`)
* `$TEAMPOSTGRESQL_DEFAULT_DATABASENAME` (default: `postgres`)
* `$TEAMPOSTGRESQL_DEFAULT_SSL` (default: `false`)


## Example

```shell
# launch teampostgresql web application
docker run --name=teampostgresql \
           --env=TEAMPOSTGRESQL_ADMIN_USER=postgres \
           --env=TEAMPOSTGRESQL_ADMIN_PASSWORD=supersecure \
           webworks/teampostgresql
```