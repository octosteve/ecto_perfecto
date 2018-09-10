# EctoPerfecto
mix deps.get
run docker volume create --name=db-perfecto-data
docker-compose up
mix ecto.create
