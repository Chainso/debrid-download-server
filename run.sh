#!/bin/bash

# Create .env from public and private.env
public_env_file=public.env
private_env_file=private.env
env_file=.env

cat "${public_env_file}" > "${env_file}"

if [ -f "${private_env_file}" ]; then
    cat "${private_env_file}" >> "${env_file}"
fi

COMPOSE_DOCKER_CLI_BUILD=1 docker-compose up -d --build
