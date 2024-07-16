cd /opt/$0
docker compose pull
docker compose down
docker compose run -it --rm $0 php artisan xboard:update
docker compose up -d