clean:: ## remove terraform modules and initialized backend configuration
	rm -rf .terraform

install:: ## install terraform providers and modules
	terraform init

update:: ## update terraform providers and modules
	terraform init -upgrade
	terraform providers lock -platform={darwin,linux}_{amd64,arm64}
