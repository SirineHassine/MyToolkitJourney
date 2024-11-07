
# Disk Usage
The first step is knowing the disk usage of Docker. We can use the docker system df command to get a breakdown of how much disk space is being taken up by various artifacts.

TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          3         3         1.071GB   0B (0%)
Containers      3         3         532.8kB   0B (0%)
Local Volumes   2         2         275.2MB   0B (0%)
Build Cache     52        0         574.8MB   574.8MB

# Remove containers
docker rm $(docker ps -a -q)

# Remove images
docker rmi $(docker images)

# Remove volumes
docker volume rm $(docker volume ls)

# Remove networks
docker network prune -f

# Remove All
This will remove all unused containers, images, networks, and build cache.
docker system prune -f

# Start and manage containairs defined in docker-compose
Docker compose up [-d]

# Rebuild images befode service launch
docker-compose up --build 

# restart containers (even if no changes on the services)
docker-compose up --force-recreate 

