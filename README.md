# ci-markdownlint-task

A simple Docker image which has markdownlint (more specifically
[markdownlint-cli2](https://github.com/DavidAnson/markdownlint-cli2)).
This image is based on `ci-node-runtime-18:1.0.0`.

## Build arguments

* `MARKDOWNLINT_CLI_VERSION` - version of markdownlint-cli2 to install.
  (_Defaults to 0.8.1_)

## Entrypoint

The entrypoint is set to `/bin/bash`.

## Building locally

```sh
$ export AWS_PROFILE=<SHARED_SERVICES_PROFILE>

$ export AWS_REGION=eu-west-2

$ aws sso login
...

$ aws ecr get-login-password | docker login --username AWS --password-stdin 416670754337.dkr.ecr.eu-west-2.amazonaws.com
...

$ docker build -t 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-markdownlint-task .
...
```
