# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION v1.20.4

RUN curl -sLO https://storage.googleapis.com/kubernetes-release/release/${VERSION}/bin/linux/amd64/kubectl && \
    chmod +x kubectl && mv kubectl /usr/local/bin/kubectl

VOLUME /root/.kube

ENTRYPOINT ["bash"]
