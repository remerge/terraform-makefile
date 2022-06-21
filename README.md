# Terraform Makefile Framework

Makefile framework for all Terraform projects.

## Getting Started

For a new project that does not use the Makefile framework yet, setup
[remerge/makefile](https://github.com/remerge/makefile) first and then add this
repository as a Makefile module:

```bash
make mkf-add MODULE=remerge/terraform-makefile
```

Now make targets can be included in the parent project:

```plain
include mkf/common/common.mk
include mkf/terraform/terraform.mk
```
