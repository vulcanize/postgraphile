FROM node:alpine

RUN npm install -g postgraphile
RUN npm install -g postgraphile-plugin-connection-filter
RUN npm install -g @graphile/pg-pubsub

EXPOSE 5000

ENV HOST 0.0.0.0
ENV PORT 5000
ENV SCHEMA "public,eth"
ENV PG_USER "vdbm"
ENV PG_PASSWORD "password"
ENV PG_HOST "contact-watcher-db"
ENV PG_PORT 5432
ENV PG_DATABASE "vulcanize_public"

CMD ["/bin/sh", "-c", "postgraphile \
     --plugins @graphile/pg-pubsub --subscriptions --simple-subscriptions \
     --connection postgres://${PG_USER}:${PG_PASSWORD}@${PG_HOST}:${PG_PORT}/${PG_DATABASE} \
     --port ${PORT} \
     -n ${HOST} \
     --schema ${SCHEMA} \
     --append-plugins postgraphile-plugin-connection-filter"]