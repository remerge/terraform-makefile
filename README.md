# Terraform Makefile Framework

Makefile framework for all Terraform projects.

## Getting Started

For a new project that does not use the Makefile framework yet, setup
[remerge/makefile](https://github.com/remerge/makefile) first and then add this
repository as a Makefile module:

```bash
make mkf-add MODULE=remerge/terraform-makefile
```

Afterwards make targets can be included in the parent project:

```plain
include mkf/common/common.mk
include mkf/terraform/terraform.mk
```

## Available Makefile Targets

| Name              | File                 | Description                                         |
| ----------------- | -------------------- | --------------------------------------------------- |
| clean             | common/common.mk     | remove build artifacts and caches                   |
| reset             | common/common.mk     | reset repository to remote state                    |
| install           | common/common.mk     | prepare environment and install dependencies        |
| update            | common/common.mk     | update environment and dependencies                 |
| generate          | common/common.mk     | generate documentation, configuration, schemas, etc |
| check             | common/common.mk     | run pre commit formatters and linters               |
| test              | common/common.mk     | run unit and integration test cases                 |
| build             | common/common.mk     | run build steps and create artifact                 |
| git-reset         | common/git.mk        | cleanup and reset repository to remote state        |
| mkf-add           | common/mkf.mk        | add new makefile framework module                   |
| mkf-update        | common/mkf.mk        | update makefile framework modules                   |
| pre-commit-clean  | common/pre-commit.mk | remove pre-commit cached repositories               |
| pre-commit-update | common/pre-commit.mk | update pre-commit hook and modules                  |
| pre-commit-check  | common/pre-commit.mk | run pre commit hooks                                |
| tf-clean          | terraform.mk         | remove Terraform providers and modules              |
| tf-install        | terraform.mk         | install Terraform providers and modules             |
| tf-update         | terraform.mk         | update Terraform providers and modules              |
| tf-test           | terraform.mk         | test Terraform configuration files                  |
| tf-build          | terraform.mk         | build Terraform plan for the current configuration  |
