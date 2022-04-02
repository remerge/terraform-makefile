MKF_PREFIX = .
MKF_COMMON = $(MKF_PREFIX)/common
MKF_COMMON_REPO = https://github.com/remerge/makefile

# should not be merged into this repository
BOOTSTRAP := $(shell test -d $(MKF_COMMON) || git clone $(MKF_COMMON_REPO) $(MKF_COMMON))

include $(MKF_COMMON)/common.mk

MKF_TERRAFORM = .
include $(MKF_TERRAFORM)/terraform.mk

all: ## alias for `make generate format lint test build`
all: generate format lint test build
