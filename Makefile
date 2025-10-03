include .env
include .cmd.env

.PHONY: help test
help:
	@echo "usage: make <option>"
	@echo "options and effects:"
	@echo "    help                     : Show help"
	@echo "    test                     : Test ..."

test:
	@echo "test ..."

.PHONY: echo_init_network
echo_init_network:
	@echo ${DOCKER} network ls
	@echo ${DOCKER} network create --driver ${DOCKER_NETWORK_DRIVER} --subnet=${DOCKER_BACKEND_SUBNET} --gateway=${DOCKER_BACKEND_SUBNET_GATEWAY} ${DOCKER_BACKEND_NETWORK_NAME}
	@echo ${DOCKER} network ls

.PHONY: enter_broker1 enter_broker2 enter_broker3
enter_broker1:
	@${DC_ENTER} ${KAFKA_BROKER_1_CONTAINER_NAME} bash
enter_broker2:
	@${DC_ENTER} ${KAFKA_BROKER_2_CONTAINER_NAME} bash
enter_broker3:
	@${DC_ENTER} ${KAFKA_BROKER_3_CONTAINER_NAME} bash

.PHONY: enter_controller1 enter_controller2 enter_controller3
enter_controller1:
	@${DC_ENTER} ${KAFKA_CONTROLLER_1_CONTAINER_NAME} bash
enter_controller2:
	@${DC_ENTER} ${KAFKA_CONTROLLER_2_CONTAINER_NAME} bash
enter_controller3:
	@${DC_ENTER} ${KAFKA_CONTROLLER_3_CONTAINER_NAME} bash
