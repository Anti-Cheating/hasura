FROM hasura/graphql-engine:v2.22.0

ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true
ENV HASURA_GRAPHQL_DEV_MODE=true
ENV HASURA_GRAPHQL_ADMIN_SECRET=yoursecret

CMD graphql-engine serve \
  --database-url $DATABASE_URL \
  --port $PORT
