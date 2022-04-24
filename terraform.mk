.PHONY: tf-clean
tf-clean: ## remove Terraform providers and modules
	rm -rf .terraform
clean:: tf-clean

.PHONY: tf-install
tf-install: ## install Terraform providers and modules
	terraform init
install:: tf-install

.PHONY: tf-update
tf-update:: ## update Terraform providers and modules
	terraform init -upgrade
	terraform providers lock -platform={darwin,linux}_{amd64,arm64}
update:: tf-update

.PHONY: tf-test
tf-test: ## test Terraform configuration files
	terraform validate
test:: tf-test

.PHONY: tf-build
tf-build: ## build Terraform plan for the current configuration
	terraform plan
build:: tf-build
