FROM jarbasai/ovos-base:latest
ARG USER=ovos

COPY --chown=${USER}:${USER} files/requirements.txt /tmp/requirements.txt
COPY files/entrypoint.sh /usr/local/bin/entrypoint.sh

USER root

RUN uv pip install -r /tmp/requirements.txt && rm -rf /tmp/requirements.txt

USER "$USER"

ENTRYPOINT ["/bin/bash", "/usr/local/bin/entrypoint.sh"]

WORKDIR "/home/${USER}"
