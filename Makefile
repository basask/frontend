port?=8001
microservice?=user

all: bash

bash:
	@docker-compose exec swagger-api /bin/sh
mock-server:
	@docker-compose exec swagger-api "sh mock-server.sh -p $(port) -m $(microservice)"
build:
	@docker build . -t swagger-api