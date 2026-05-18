## Docker Compose Installation:

```bash
#docker-composer installation commands:
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/download/v2.29.6/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose

chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

# test the installation with:
docker compose version
```
![alt text](image.png)


## Docker Compose up and install each app:

```bash
# Create Directory
mkdir demo-compose
cd demo-compose

# Download the Docker Compose file
wget https://github.com/aws-containers/retail-store-sample-app/releases/download/v1.3.0/docker-compose.yaml

# Set environment variable
export DB_PASSWORD='admin123'
echo $DB_PASSWORD

# Start all services
## Important Note:  if your file name is docker-compose.yaml dont need to specify -f with file
docker compose -f docker-compose.yaml up
docker compose up 

# OR start in detached mode (background)
docker compose -f docker-compose.yaml up -d
docker compose up -d

# Stop all services (gracefully) (NOT NEEDED NOW - JUST FOR REFERENCE)
docker compose down
```
![alt text](image-1.png)
![alt text](image-2.png)
![alt text](image-3.png)
![alt text](image-4.png)


## Docker Compose commands practice:
```bash
# To check  all running container with docker composer
jaypal@8RJX084:~/bootcamp/demo-compose$ docker compose ps

# To check  all images
jaypal@8RJX084:~/bootcamp/demo-compose$ docker images

# To stop specific service
jaypal@8RJX084:~/bootcamp/demo-compose$ docker compose stop orders
[+] Stopping 1/1
 ✔ Container retail-sample-orders-1  Stopped 

# For specific service log
jaypal@8RJX084:~/bootcamp/demo-compose$ docker compose logs checkout
checkout-1  | [Nest] 1  - 05/05/2026, 9:00:34 AM     LOG [NestFactory] Starting Nest application...
checkout-1  | [Nest] 1  - 05/05/2026, 9:00:34 AM     LOG [InstanceLoader] OpenTelemetryModule dependencies initialized +22ms
checkout-1  | [Nest] 1  - 05/05/2026, 9:00:34 AM     LOG [InstanceLoader] PrometheusModule dependencies initialized +0ms
checkout-1  | [Nest] 1  - 05/05/2026, 9:00:34 AM     LOG [InstanceLoader] ConfigHostModule dependencies initialized +1ms
checkout-1  | [Nest] 1  - 05/05/2026, 9:00:34 AM     LOG [InstanceLoader] OpenTelemetryCoreModule dependencies initial

# To run exec in service container
jaypal@8RJX084:~/bootcamp/demo-compose$ docker compose exec ui sh
sh-5.2$ id
uid=1000(appuser) gid=1000(appuser) groups=1000(appuser)
sh-5.2$

# Service stats
jaypal@8RJX084:~/bootcamp/demo-compose$ docker compose exec ui sh
sh-5.2$ id
uid=1000(appuser) gid=1000(appuser) groups=1000(appuser)
sh-5.2$ exit docker compose stats
exit
sh: exit: docker: numeric argument required
jaypal@8RJX084:~/bootcamp/demo-compose$ docker compose stats
CONTAINER ID   NAME                             CPU %     MEM USAGE / LIMIT     MEM %     NET I/O           BLOCK I/O         PIDS
cdff5b5d1234   retail-sample-ui-1               0.97%     339.1MiB / 512MiB     66.23%    36.9kB / 631kB    0B / 1.18MB       37
f3a6d198420a   retail-sample-catalog-1          0.22%     8.715MiB / 7.603GiB   0.11%     65.5kB / 45.4kB   0B / 0B           11

#check running processe
jaypal@8RJX084:~/bootcamp/demo-compose$ docker compose top ui
retail-sample-ui-1
UID      PID     PPID    C    STIME   TTY   TIME       CMD
jaypal   17157   17120   1    14:36   ?     00:00:19   java -XX:MaxRAMPercentage=75.0 -Djava.security.egd=file:/dev/urandom -jar /app/app.jar
```

![alt text](image-6.png)
![alt text](image-7.png)
![alt text](image-8.png)
![alt text](image-9.png)
