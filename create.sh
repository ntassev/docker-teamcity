#!/bin/bash

REPO="ntassev/teamcity"
TAG="latest"

PUBLIC_PORT=${PUBLIC_PORT:-7002}

NAME="teamcity"
PORTS="$PUBLIC_PORT:8111"
DATA_NAME=${NAME}-data

sudo docker create --name $DATA_NAME $REPO:$TAG

sudo docker create --name $NAME -p $PORTS --volumes-from $DATA_NAME $REPO:$TAG
