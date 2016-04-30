#!/usr/bin/env bash

###
# update system
###

apt-get update
apt-get -y upgrade

###
# install essential services
###

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

###
# install pubgem processes
###

# rss-aggregator

# create rss-aggregator user
# git clone "https://github.com/pubgem/rss-aggregator.git"

# bib-curator

# front-page
