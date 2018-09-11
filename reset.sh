#!/bin/bash
docker-compose restart db-perfecto
mix do ecto.drop, ecto.create
cat priv/seed.sql | docker-compose exec -u postgres db-perfecto psql ecto_perfecto
