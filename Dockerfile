FROM hasura/graphql-engine:v2.22.0

# Enable console (optional)
ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true

# Enable dev mode (optional)
ENV HASURA_GRAPHQL_DEV_MODE=true
