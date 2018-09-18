#!/bin/bash
docker volume create --name=db-perfecto-data
docker-compose up -d
mix do deps.get, ecto.create
cat priv/seed.sql | docker-compose exec -u postgres db-perfecto psql ecto_perfecto
