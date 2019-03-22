apk add xhost
xhost +local:root 1>/dev/null 2>&1
docker exec \
    -i checker_dev \
    /bin/zsh
xhost -local:root 1>/dev/null 2>&1
