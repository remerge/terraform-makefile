build:: ## generate a speculative execution plan, showing what actions Terraform would take to apply the current configuration
	$(TERRAFORM) plan -compact-warnings -out=terraform.plan
