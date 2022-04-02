MKF_PREFIX ?= mkf
MKF_TERRAFORM ?= $(MKF_PREFIX)/terraform

TERRAFORM = $(call need-command,terraform)
TF_FILES = $(wildcard **/*.tf)

include $(MKF_TERRAFORM)/prepare.mk
include $(MKF_TERRAFORM)/generate.mk
include $(MKF_TERRAFORM)/test.mk
include $(MKF_TERRAFORM)/build.mk
