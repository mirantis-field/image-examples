

# Debian Example Image

## Container Commands

### Build the image
```
docker build -t debian-example:latest .
```

### Start the container
```
docker container run -d --name debian-example -e ENV_VARIABLE1=variable1 -e ENV_VARIABLE2=variable2 debian-example:latest
```

### View the container logs
```
docker container logs debian-example
```

Outputs should be:

```
Starting ENTRYPOINT script /docker-entrypoint.sh

ENV_VARIABLE1=variable1
ENV_VARIABLE2=variable2
HOSTNAME=<container hash>
MY_VARIABLES=variable1,variable1
PWD=/
HOME=/root
SHLVL=1
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
_=/usr/bin/env

ENTRYPOINT is now going to execute COMMAND:
sleep 86400
```

### Remove the container
```
docker container rm -f debian-example
```

## Stack Commands

### Build the image
```
docker build -t debian-example:latest .
```

## Initialize a Swarm
```
docker swarm init
```

### Deploy the stack
```
docker stack deploy -c docker-compose.yaml debian-example
```

### Check the stack
```
docker stack ps debian-example
```

### View the container logs
```
docker container logs $(docker container ls --filter name=debian-example_debian -q)
```

### Remove the stack
```
docker stack rm debian-example
```
