# pubgem-host-web

boot:
	cd vagrant && vagrant up

provision:
	cd vagrant && vagrant reload --provision

requirements:
	vagrant box add ubuntu/xenial64
