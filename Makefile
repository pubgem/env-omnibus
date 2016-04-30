# pubgem-host-web

up:
	vagrant up

ssh:
	vagrant ssh

provision:
	vagrant reload --provision

requirements:
	vagrant box add ubuntu/xenial64
