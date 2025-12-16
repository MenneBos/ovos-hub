FROM jarbasai/ovos-base:latest
ARG USER=ovos

COPY --chown=${USER}:${USER} files/requirements.txt /tmp/requirements.txt
COPY --chown=${USER}:${USER} files/entrypoint.sh /usr/local/bin/
COPY --chown=${USER}:${USER} files/server.json /home/${USER}/.config/hivemind-core/server.json

USER root

RUN chmod +x /usr/local/bin/entrypoint.sh

RUN uv pip install -r /tmp/requirements.txt \
  && mkdir -p ${HOME}/.config/{hivemind,hivemind-core} ${HOME}/.local/{hivemind,share/hivemind} \
  && rm -rf /tmp/requirements.txt

HEALTHCHECK --interval=60s --timeout=10s --retries=3 --start-period=60s \
    CMD curl --header "Connection: Upgrade" --header "Upgrade: Websocket" http://127.0.0.1:5678 || kill 1

USER "$USER"

ENTRYPOINT ["/bin/bash", "/usr/local/bin/entrypoint.sh"]

WORKDIR /home/${USER}
