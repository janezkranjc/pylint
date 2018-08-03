#!/bin/bash
# just when starting the docker-compose file
CURDIR=`pwd`
cd /tmp
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
pip install flake8
cd ${CURDIR}
go build pylint-worker.go
./pylint-worker