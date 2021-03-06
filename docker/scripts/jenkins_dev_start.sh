docker pull ivex/ros-kinetic
docker run -it \
    -d \
    --privileged \
    --rm \
    --name checker_dev \
    --volume /var/lib/docker/volumes/jenkins-data/_data/workspace/ros_study:/app \
    --net host \
    --add-host localhost:127.0.0.1 \
    --add-host in_checker_docker:127.0.0.1 \
    --hostname in_checker_docker \
    --pid=host \
    ivex/ros-kinetic \
    /bin/zsh