# first-docker
ubuntu/php5.6/nginx env

适应老旧的环境/无奈之举

```
docker-composer up

docker run -it -p 9999:80 --volume /Users/yangqi/Sites/web:/var/www/html my-first-docker_web:latest
```

进入docker
```
service nginx start
```

```
service php5.6-fpm start
```
