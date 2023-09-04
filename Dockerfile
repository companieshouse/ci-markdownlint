FROM 416670754337.dkr.ecr.eu-west-2.amazonaws.com/ci-node-runtime-18:1.0.0

ARG MARKDOWNLINT_CLI_VERSION=0.8.1

RUN  dnf upgrade -y \
  && dnf update \
  && dnf install -y tar-2:1.34 findutils-1:4.8.0 file-5.39 \
  && dnf clean all \
  && npm install markdownlint-cli2@"${MARKDOWNLINT_CLI_VERSION}" --global

LABEL base.image="ci-node-runtime-18:1.0.0" \
  repostory.name="ci-markdownlint-task"

ENTRYPOINT [ "/bin/bash" ]
