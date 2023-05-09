#!/bin/bash

date=$(date +"%Y%m%d-%H-%M-%S")

mysqldump -h localhost -u acme_www -p4cg4vjgqllotzd7xjb9t acme > server/dumps/acme-${date}.sql