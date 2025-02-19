ARG TARGETOS
ARG TARGETARCH
ARG TAG

FROM vault:$TAG

USER root
RUN setcap cap_ipc_lock=+ep /bin/vault
USER vault
