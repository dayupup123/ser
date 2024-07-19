cd /opt/$1
docker compose pull
docker compose down
docker compose run -it --rm $1 php artisan xboard:update
docker compose up -d