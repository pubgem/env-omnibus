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
sudo -i -u rss-aggregator /bin/bash - << eof
    source "/home/rss-aggregator/.bashrc"
    git clone "https://github.com/pubgem/rss-aggregator.git"
    cd rss-aggregator
    mkvirtualenv -a ~/rss-aggregator rss-aggregator
    workon rss-aggregator
    make install db # test
    # bin/manage.py rssfeed_load_list --file ~/rss-aggregator/tests/data/sample_apa_journals.json
eof

# configure nginx to proxy pubgem
rm /etc/nginx/sites-enabled/default
cp /env-omnibus/files/nginx/site-plain.conf /etc/nginx/sites-available/pubgem
ln -s /etc/nginx/sites-available/pubgem /etc/nginx/sites-enabled
service nginx restart

# configure systemd to start aggregation and webapp processes
cp /home/rss-aggregator/rss-aggregator/etc/systemd/* /etc/systemd/system/
cp /home/rss-aggregator/rss-aggregator/etc/conf/production.conf /etc/systemd/system/rss-aggregator.conf

systemctl daemon-reload
systemctl enable rss-aggregator.service
systemctl start rss-aggregator.service
systemctl enable rss-aggregator.timer
systemctl start rss-aggregator.timer
systemctl enable rss-aggregator-app.service
systemctl start rss-aggregator-app.service

###
# citation-curator
###

###
# front-page
###
