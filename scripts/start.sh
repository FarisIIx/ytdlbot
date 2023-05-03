docker run -d --restart unless-stopped --name ytdl \
   --net host \
     -e TOKEN=6138041049:AAETY4JmrA1k77OISyB4UcYjmnCmoQpVIuU \
     -e APP_ID=24880453 \
     -e APP_HASH=28b19ba814d9b7a680e89e7a98fd681c \
     -e ENABLE_CELERY=True \
     -e REDIS=192.168.6.1 \
     -e MYSQL_HOST=192.168.6.1 \
     -e WORKERS=4 \
     -e VIP=True \
     -e CUSTOM_TEXT=#StandWithUkraine \
     bennythink/ytdlbot \
     /usr/local/bin/supervisord -c "/ytdlbot/conf/supervisor_worker.conf"
