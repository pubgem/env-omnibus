# web-environment

This project contains a Linux environment for hosting pubgem processes.  The following services are provided:

- nginx
- postgres
- python 3

## Installation

    git clone https://github.com/pubgem/web-environment.git
    make requirements

## Starting the web environment VM

    make up
    make ssh

## Pre-requisites

### OS X

    brew install Caskroom/cask/vagrant

### Debian-type Linux

    apt install vagrant

### RedHat-type Linux

    yum install vagrant
