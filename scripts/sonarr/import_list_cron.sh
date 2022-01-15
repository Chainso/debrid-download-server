curl -d '{name: "ImportListSync"}' -H "Content-Type: application/json" -X POST http://sonarr:${SONARR_PORT}/api/v3/command/?apikey=${SONARR_API_KEY}
