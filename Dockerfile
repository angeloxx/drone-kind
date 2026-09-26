FROM docker:26.0.0-dind-alpine3.19
ARG KIND_VERSION=v0.33.0
ENV KIND_VERSION=${KIND_VERSION}
ADD kind.sh /bin/
ADD kind-config.yml /root
RUN chmod +x /bin/kind.sh
RUN apk -Uuv add curl bash ca-certificates
ENTRYPOINT /bin/kind.sh