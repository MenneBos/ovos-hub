FROM jarbasai/ovos-base:latest
COPY --chown=${USER}:${USER} files/requirements.txt /tmp/requirements.txt

USER root

RUN uv pip install -r /tmp/requirements.txt && rm -rf /tmp/requirements.txt

USER "$USER"

ENTRYPOINT hivemind-webchat

WORKDIR /home/${USER}

EXPOSE 9090
