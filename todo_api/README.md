# Todo API

Rails 8 API with PostgreSQL.

## Development with Docker

Requires [Docker](https://docs.docker.com/get-docker/) with Compose.

```bash
cp .env.example .env   # optional; defaults work out of the box
docker compose up --build
```

App: http://localhost:3000  
Postgres: `localhost:5432` (user/password `postgres` / `postgres`)

Useful commands:

```bash
docker compose run --rm web bin/rails console
docker compose run --rm web bin/rails db:migrate
docker compose run --rm web bin/rails test
docker compose down          # stop
docker compose down -v       # stop and wipe database volume
```
