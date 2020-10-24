FROM bitnami/minideb:buster

LABEL maintainer="Oleg Matrozov <oleg.matrozov@gmail.com>"

RUN apt-get update && apt-get install -y curl gettext pwgen && rm -rf /var/lib/apt/lists/*

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

RUN chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
