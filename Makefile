# pubgem-host-web

up:
	cd vagrant && vagrant up

ssh:
	cd vagrant && vagrant ssh

provision:
	cd vagrant && vagrant reload --provision

requirements:
	vagrant box add ubuntu/xenial64
