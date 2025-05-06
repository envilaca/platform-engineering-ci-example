#!/bin/bash

cd /home/ubuntu/example_app/backend/

pm2 start ./dist/server.js --name backend