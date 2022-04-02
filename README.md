# Terraform Makefile Framework

Makefile framework for all Terraform projects.

## Getting Started

For a new project that does not use the Makefile framework yet, setup
[remerge/makefile](https://github.com/remerge/makefile) first and then add this
repository as a Makefile module:

```bash
make add MODULE=remerge/terraform-makefile
```

Afterwards make targets can be included in the parent project:

```plain
include mkf/common/common.mk
include mkf/terraform/terraform.mk
```

## Available Makefile Targets

| Name      | File               | Description                                                                                                         |
| --------- | ------------------ | ------------------------------------------------------------------------------------------------------------------- |
| all       | Makefile           | alias for `make generate format lint test build`                                                                    |
| help      | common/help.mk     | display this help text                                                                                              |
| clean     | common/prepare.mk  | remove all build artifacts generated by `make all`                                                                  |
| distclean | common/prepare.mk  | remove all artifacts, caches, dependencies, settings and reset branch to remote (DANGEROUS!)                        |
| dep       | common/prepare.mk  | alias for install                                                                                                   |
| install   | common/prepare.mk  | prepare environment and install dependencies for all make targets                                                   |
| up        | common/prepare.mk  | alias for update                                                                                                    |
| update    | common/prepare.mk  | update environment and all dependencies to their latest version(s)                                                  |
| gen       | common/generate.mk | alias for generate                                                                                                  |
| generate  | common/generate.mk | generate documentation, schemas, etc                                                                                |
| fmt       | common/generate.mk | alias for format                                                                                                    |
| format    | common/generate.mk | format source code to conform to coding style and best practices                                                    |
| lint      | common/test.mk     | run code format check, code analysis, security scans, etc                                                           |
| test      | common/test.mk     | run unit and integration tests                                                                                      |
| build     | common/build.mk    | run all build steps and create artifact(s)                                                                          |
| add       | common/mkf.mk      | add makefile framework module                                                                                       |
| update    | common/mkf.mk      | update all makefile framework modules                                                                               |
| clean     | prepare.mk         | remove Terraform modules and initialized backend configuration                                                      |
| install   | prepare.mk         | install Terraform providers and modules                                                                             |
| update    | prepare.mk         | update Terraform providers and modules                                                                              |
| format    | generate.mk        | rewrites all Terraform configuration files to a canonical format                                                    |
| lint      | test.mk            | check if Terraform files are formatted                                                                              |
| test      | test.mk            | test the configuration files, referring only to the configuration and not accessing any remote services             |
| build     | build.mk           | generate a speculative execution plan, showing what actions Terraform would take to apply the current configuration |
