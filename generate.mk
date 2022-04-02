format:: ## rewrites all Terraform configuration files to a canonical format
	$(TERRAFORM) fmt -diff $(CURDIR) | colordiff
