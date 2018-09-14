#!/bin/bash
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

if [ $? -ne 0]; then exit $?; fi

curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list

if [ $? -ne 0]; then exit $?; fi

sudo apt-get update 

if [ $? -ne 0]; then exit $?; fi

sudo apt-get install mssql-tools unixodbc-dev

exit $?
