# #!/bin/bash

# cd $(dirname $0)/..


# EXEC=docker

# USER="iideas2019"

# TAG="xenial"

# # ENTER THE ROOT FOLDER
# cd ../
# ROOT_FOLDER=$(pwd)

# for i in frontend geo profile rate recommendation reserve search user
# do
#   IMAGE=hotel_reserv_${i}_single_node
#   echo Processing image ${IMAGE}
#   cd $ROOT_FOLDER
#   $EXEC build -t "$USER"/"$IMAGE":"$TAG" -f Dockerfile .
#   $EXEC push "$USER"/"$IMAGE":"$TAG"
#   cd $ROOT_FOLDER

#   echo
# done


# cd - >/dev/null

# ROOT_FOLDER=$(pwd)
# for image in mcrouter  media-frontend  openresty-thrift  thrift-microservice-deps
# do
#     cd ${image}
#     docker build -t xenial -f xenial/Dockerfile .
#     docker tag xenial ${USER}/${image}:xenial
#     docker push ${USER}/${image}:xenial
# done
docker build -t iideas2019/openresty-thrift:latest -f xenial/Dockerfile .
docker push iideas2019/openresty-thrift:latest
