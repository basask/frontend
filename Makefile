FILES=$(shell docker ps -a -q --filter "name=swagger-api*")
VERSION := $(shell git describe --tags --exact-match 2>/dev/null || echo latest)
DOCKERHUB_NAMESPACE ?= sumelms
IMAGE := ${DOCKERHUB_NAMESPACE}/swagger-api:${VERSION}
CONFIG_FILE := ${PWD}/fake-api/server.yaml

all: bash

bash:
	@docker-compose exec swagger-api /bin/sh

mock-build:
	@docker build . -t ${IMAGE} -f ./docker/Dockerfile_fakeapi

mock-dev:
	$(MAKE) mock-build
	@docker run --rm -p ${PORT}:${PORT} --name=${API} -d -v ${PWD}/fake-api/swagger:/swagger danielgtaylor/apisprout /swagger/${API}.yaml -p ${PORT} --watch
	
mock-run:
	@docker-compose -f docker/docker-compose-fakeapi.yml up -d

swagger-ui:
	@docker run --rm -p 80:8080 --name=swagger-ui -e SWAGGER_JSON=/swagger/${API}.yaml -d -v ${PWD}/fake-api/swagger:/swagger swaggerapi/swagger-ui