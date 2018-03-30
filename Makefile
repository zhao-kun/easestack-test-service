MKFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
MKFILE_DIR := $(dir $(MKFILE_PATH))

BUILD_DOCKER_IMAGE=zhao-kun/easestack-test-server
BUILD_DOCKER_VERSION=1.0-alpine

DOCKER_FILE=${MKFILE_PATH}/rootfs/Dockerfile

DOCKER_BUILD_OPTION=-t ${BUILD_DOCKER_IMAGE}:${BUILD_DOCKER_VERSION} \
	-f "${DOCKER_FILE}" \
	"${MKFILE_PATH}"

build_image:
	docker build  ${DOCKER_BUILD_OPTION}

