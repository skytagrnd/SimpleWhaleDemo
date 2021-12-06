# syntax=docker/dockerfile:1

FROM nginx:alpine
COPY static /usr/share/nginx/html
LABEL maintainer = "bengotch@docker.com"

FROM docker
COPY --from=docker/buildx-bin /buildx /usr/libexec/docker/cli-plugins/docker-buildx
RUN docker buildx version
