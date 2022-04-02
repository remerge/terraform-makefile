lint:: ## check if Terraform files are formatted
	$(TERRAFORM) fmt -check -diff $(CURDIR) | colordiff
	@$(TERRAFORM) fmt -check $(CURDIR)

test:: ## test the configuration files, referring only to the configuration and not accessing any remote services
	$(TERRAFORM) validate
