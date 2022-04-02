clean:: ## remove Terraform modules and initialized backend configuration
	rm -rf .terraform

install:: ## install Terraform providers and modules
	$(TERRAFORM) init

update:: ## update Terraform providers and modules
	$(TERRAFORM) init -upgrade
	$(TERRAFORM) providers lock -platform={darwin,linux}_{amd64,arm64}
