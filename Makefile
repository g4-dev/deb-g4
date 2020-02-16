# use args with rubygem compliant version number (major.minor.fix)
build:
	/bin/bash -c 'VAGRANT_CLOUD_TOKEN=$(shell cat .token) packer build -var 'version=1.0.0' box-config.json'