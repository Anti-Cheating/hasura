FROM hasura/graphql-engine:v2.22.0

# Enable console (disable in production)
ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true
ENV HASURA_GRAPHQL_DEV_MODE=true

# Reduce PG connection usage (optional)
ENV HASURA_GRAPHQL_PG_CONNECTIONS=15

# Railway-friendly startup command
# Uses --port 8080 (correct flag)
CMD graphql-engine \
    --database-url $DATABASE_URL \
    serve \
    --port 8080
