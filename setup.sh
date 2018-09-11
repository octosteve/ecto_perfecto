#!/bin/bash
mix do deps.get, ecto.create
docker volume create --name=db-perfecto-data
docker-compose up -d
cat priv/seed.sql | docker-compose exec -u postgres db-perfecto psql ecto_perfecto
