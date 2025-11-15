FROM hasura/graphql-engine:v2.22.0

# Recommended: keep console & dev mode only in non-production
ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true
ENV HASURA_GRAPHQL_DEV_MODE=true

CMD graphql-engine serve \
  --database-url $DATABASE_URL \
  --port 8080
