#!/bin/bash
docker-compose restart db-perfecto
mix do ecto.drop, ecto.create
cat priv/seed.sql | pbcopy
echo "******************Paste what's in your buffer*************"
docker-compose exec -u postgres db-perfecto psql ecto_perfecto
