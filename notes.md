
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

### backend to mysql

start backend
```
docker run -it --name backend mysql bash
```

in container:
```
docker exec -i backend \
  mysql -h 172.17.02 --password=s3cr3t mysql <<< "select * from vip"
```

## Networking


## Mysql

```
  docker network create blue

  docker run -d \
    -p 3306:3306 \
    --name mydb \
    --net blue \
    -v qadb:/var/lib/mysql \
    -v $PWD/init:/docker-entrypoint-initdb.d \
    -e MYSQL_ROOT_PASSWORD=s3cr3t \
    mysql

    docker run -it \
      --name backend \
      --net blue \
      mysql bash
```