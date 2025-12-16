FROM jarbasai/ovos-base:latest
ARG USER=ovos

HEALTHCHECK --interval=60s --timeout=10s --retries=3 --start-period=60s \
    CMD curl --header "Connection: Upgrade" --header "Upgrade: Websocket" http://127.0.0.1:8181/core || kill 1

USER root

RUN uv pip install ovos-messagebus

USER "$USER"

ENTRYPOINT ["ovos-messagebus"]

WORKDIR "/home/${USER}"
