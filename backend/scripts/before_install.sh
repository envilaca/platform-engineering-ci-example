#!/bin/bash

sudo apt update
sudo apt install nodejs -y
sudo apt install npm -y

DIR="/home/ubuntu/example_app"
if [ -d "$DIR" ]; then
  echo "${DIR} exists"
else
  echo "Creating ${DIR} directory"
  mkdir ${DIR}
fi