# Postgraphile

Docker image for Postgraphile

Build command
```
docker build -t vulcanize/postgraphile .
```

### Environment Variables

| Name        | Default Value      | Comment                     |
|-------------|--------------------|-----------------------------|
| HOST        | 0.0.0.0            | Postgraphile host           |
| PORT        | 5000               | Postgraphile port           |
| SCHEMA      | public,eth         | Postgresql schema to expose |
| PG_USER     | vdbm               | Postgresql user             |
| PG_PASSWORD | password           | Postgresql password         |
| PG_HOST     | contact-watcher-db | Postgresql host             |
| PG_PORT     | 5432               | Postgresql port             |
| PG_DATABASE | vulcanize_public   | Postgresql database         |
| INIT_DELAY  | 5                  | Initial delay (in seconds)  |

Note: `INIT_DELAY` can be used to provide sufficient time for the database migrations to run, before starting `postgraphile` itself.
