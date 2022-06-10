
## Helper aliases

```
alias drm='docker rm -f $(docker ps -qa)'
```

## Mysql

```
  docker run -d \
    -p 3306:3306 \
    --name mydb \
    -v qadb:/var/lib/mysql \
    -v $PWD/init:/docker-entrypoint-initdb.d \
    -e MYSQL_ROOT_PASSWORD=s3cr3t \
    mysql
```