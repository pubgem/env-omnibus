#!/usr/bin/env bash

###
# rss-aggregator
###

# user: rss-aggregator
useradd --system --user-group --create-home rss-aggregator

# database: rss-aggregator
sudo -u postgres psql -c "CREATE ROLE rss_aggregator PASSWORD 'aaa' NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN"
sudo -u postgres psql -c "CREATE DATABASE rss_aggregator OWNER rss_aggregator"

# install: rss-aggregator
exec sudo -i -u rss-aggregator /bin/bash - << eof
    source "/home/rss-aggregator/.bashrc"
    git clone "https://github.com/pubgem/rss-aggregator.git"
    cd rss-aggregator
    mkvirtualenv -a ~/rss-aggregator rss-aggregator
    workon rss-aggregator
    make install db test
eof

###
# citation-curator
###

###
# front-page
###
