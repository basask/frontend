FILES=$(shell docker ps -a -q --filter "name=swagger-api*")
VERSION := $(shell git describe --tags --exact-match 2>/dev/null || echo latest)
DOCKERHUB_NAMESPACE ?= sumelms
IMAGE := ${DOCKERHUB_NAMESPACE}/swagger-api:${VERSION}

all: bash

bash:
	@docker-compose exec swagger-api /bin/sh
mock-dev:
	@docker run --rm -p ${PORT}:${PORT} --name=${API} -d -v ${PWD}/fake-api/swagger:/swagger danielgtaylor/apisprout /swagger/${API}.yaml -p ${PORT} --watch

build:
	@docker build . -t ${IMAGE} -f ./docker/Dockerfile_fakeapi
mock-run:
	@docker run --rm -p ${PORT}:${PORT} --name=${API} -d ${IMAGE} /${API}.yaml -p ${PORT} --validate-request --validate-server
swagger-ui:
	@docker run --rm -p 80:8080 --name=swagger-ui -e SWAGGER_JSON=/swagger/${API}.yaml -d -v ${PWD}/fake-api/swagger:/swagger swaggerapi/swagger-ui