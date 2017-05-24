#!/bin/bash
_docker_registry_version=$1
_docker_registry_tag=$2
_release_build=false

if [ -z "${_docker_registry_version}" ]; then
	source DOCKER_REGISTRY_VERSION
	_docker_registry_version=$DOCKER_REGISTRY_VERSION
	_docker_registry_tag=$DOCKER_REGISTRY_VERSION
	_release_build=true
fi

echo "DOCKER_REGISTRY_VERSION: ${_docker_registry_version}"
echo "DOCKER TAG: ${_docker_registry_tag}"
echo "RELEASE BUILD: ${_release_build}"

docker build --tag "stakater/docker-registry:${_docker_registry_tag}"  --no-cache=true .

if [ $_release_build == true ]; then
	docker tag "stakater/docker-registry:${_docker_registry_tag}" "stakater/docker-registry:latest"
fi