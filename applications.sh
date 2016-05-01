#!/usr/bin/env bash

###
# rss-aggregator
###

# create rss-aggregator user
useradd --system --user-group --create-home rss-aggregator

cd /home/rss-aggregator
sudo -u rss-aggregator git clone "https://github.com/pubgem/rss-aggregator.git"

cd /home/rss-aggregator/rss-aggregator
# sudo -u rss-aggregator 'source /usr/local/bin/virtualenvwrapper.sh && mkvirtualenv rss-aggregator'

sudo -u postgres psql -c "CREATE ROLE rss_aggregator PASSWORD 'aaa' NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN"
sudo -u postgres psql -c "CREATE DATABASE rss_aggregator OWNER rss_aggregator"

###
# citation-curator
###

###
# front-page
###
