#!/usr/bin/env bash

apt-get update

# nginx

apt-get install -y nginx

# if ! [ -L /var/www ]; then
#   rm -rf /var/www
#   ln -fs /vagrant /var/www
# fi

# postgres

apt-get install -y postgresql

# sudo su - postgres
# psql -c "CREATE ROLE rss_aggregator PASSWORD 'aaa' NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN"
# psql -c "CREATE DATABASE rss_aggregator OWNER rss_aggregator"

