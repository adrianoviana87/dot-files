#!/bin/bash
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

if [ $? -ne 0]; then exit $?; fi

sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)"

if [ $? -ne 0]; then exit $?; fi

sudo apt-get update

if [ $? -ne 0]; then exit $?; fi

sudo apt-get install -y mssql-server

if [ $? -ne 0]; then exit $?; fi

sudo /opt/mssql/bin/mssql-conf setup

if [ $? -ne 0]; then exit $?; fi

systemctl status mssql-server
