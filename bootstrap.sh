#!/usr/bin/env bash

chmod 700 /env-omnibus

###
# update system
###

apt-get update
apt-get -y upgrade

###
# essential libraries

apt-get install -y libffi-dev libssl-dev libpq-dev

###
# utilities
###

apt-get install -y tmux autossh

###
# install essential services
###

# python

apt-get install -y python3-pip
pip3 install virtualenvwrapper

# nginx

apt-get install -y nginx

# if ! [ -L /var/www ]; then
#   rm -rf /var/www
#   ln -fs /vagrant /var/www
# fi

# postgres

apt-get install -y postgresql

# user accounts

mkdir /etc/skel/.ssh
chmod 500 /etc/skel/.ssh
cp /env-omnibus/files/.bashrc /etc/skel
cp /env-omnibus/files/.tmux.conf /etc/skel

# rm -rf /env-omnibus
