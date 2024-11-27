
# Disk Usage
The first step is knowing the disk usage of Docker. We can use the docker system df command to get a breakdown of how much disk space is being taken up by various artifacts.

TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          3         3         1.071GB   0B (0%)
Containers      3         3         532.8kB   0B (0%)
Local Volumes   2         2         275.2MB   0B (0%)
Build Cache     52        0         574.8MB   574.8MB

# Remove containers
docker rm $(docker ps -a -q) (to stop them)
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

## Images
# Build an Image from a Dockerfile
docker build -t <image_name> 
# Build an Image from a Dockerfile without the cache
docker build -t <image_name> . –no-cache 
# List local images
docker images 
# Delete an Image
docker rmi <image_name> 
# Remove all unused images
docker image prune 

## Containers
# Create and run a container from an image, with a custom name:
docker run --name <container_name> <image_name>
# Run a container with and publish a container’s port(s) to the host.
docker run -p <host_port>:<container_port> <image_name>
# Run a container in the background
docker run -d <image_name>
# Start or stop an existing container:
docker start|stop <container_name> (or <container-id>)
# Remove a stopped container:
docker rm <container_name>
# Open a shell inside a running container:
docker exec -it <container_name> sh
# Fetch and follow the logs of a container:
docker logs -f <container_name>
# To inspect a running container:
docker inspect <container_name> (or <container_id>)
# To list currently running containers:
docker ps
# List all docker containers (running and stopped):
docker ps --all
docker ps -a
# View resource usage stats
docker container stats


## Networks
# Creates a new Docker network.
docker network create network_name
# Connects a container to a network.
docker network connect network_name container_name
# Lists all networks on the host system.
docker network ls



## Docker Compose 
# Starts existing containers for a service.
docker-compose start

# Stops running containers without removing them.
docker-compose stop

# Pauses running containers of a service.
docker-compose pause

# Unpauses paused containers of a service.
docker-compose unpause

# Lists containers.
docker-compose ps

# Builds, (re)creates, starts, and attaches to containers for a service.
docker-compose up

# Stops containers and removes containers, networks, volumes, and images created by up.
docker-compose down

# Force the execution of each step/instruction in the Dockerfile
docker-compose build --no-cache 

# Builds, (re)creates, starts, and attaches to containers for a service. (-d to be in detached mode)
docker-compose up

# Force rebuild images  (obsolete)
docker-compose up --build

# Force ue env file
docker compose build --no-cache --env-file .env.prod


# Force recreate containers
docker-compose up --force-recreate

# Stops containers and removes containers, networks, volumes, and images created by up.
docker-compose down


# By defulat volumes are not deleted and recreated, to preserve persistent data, to force recreate execute
docker-compose down --volumes
docker-compose up --build --force-recreate