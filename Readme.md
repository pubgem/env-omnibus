# env-omnibus

This project contains a Linux environment for hosting pubgem processes.  The following services are provided:

- nginx
- postgres
- python 3

In the future, this omnibus environment may be supplemented with specialized components.

## Installation

First ensure vagrant is installed.  This is the only pre-requisite.  Then, use the following procedure to install a suitable Ubuntu 16.04 vagrant box:

    git clone https://github.com/pubgem/env-omnibus.git
    cd env-omnibus
    make requirements

## Starting the omnibus environment VM

Use vagrant to create a new virtual machine based on the pubgem omnibus environment.

    vagrant up
    vagrant ssh

## Pre-requisites

The only notable pre-requisite for this project is vagrant, which can be installed on many different operating systems.

### OS X

    brew install Caskroom/cask/vagrant

### Debian-type Linux

    apt install vagrant

### RedHat-type Linux

    yum install vagrant
