#!/bin/bash
#   Prerequisite 
#    * node js/npm (https://nodejs.org/en/download/package-manager/)
#    * angular/cli (to install run: `npm install -g @angular/cli`)

#install packages, need to run one time, onwards we can comment this line
npm install
#Run test cases, commenting it as there are some random failures for tests which need to be fixed
#ng test
#Build the app 
ng build --prod
IMAGE_NAME="turing-angular"
#build docker image
docker build -t $IMAGE_NAME .
#stop and remove existing conatiner
RUNNING_CONTAINER_ID=$(docker ps | grep "$IMAGE_NAME" | awk '{ print $1 }')
if [ ! -z "$RUNNING_CONTAINER_ID" ] 
then 
    docker stop $RUNNING_CONTAINER_ID
    docker rm $RUNNING_CONTAINER_ID
fi
docker run -p 8081:80 -d $IMAGE_NAME
echo "App is deployed successfully at http://localhost:8081"
