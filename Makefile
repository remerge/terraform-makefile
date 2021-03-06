MKF_PREFIX = .
MKF_COMMON = $(MKF_PREFIX)/common
MKF_COMMON_REPO = https://github.com/remerge/makefile

# should not be merged into this repository
BOOTSTRAP := $(shell test -d $(MKF_COMMON) || git clone $(MKF_COMMON_REPO) $(MKF_COMMON))

include $(MKF_COMMON)/common.mk
include ./terraform.mk
