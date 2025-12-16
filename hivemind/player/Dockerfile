FROM jarbasai/ovos-base-audio:latest
ARG USER=ovos

COPY --chown=${USER}:${USER} files/requirements.txt /tmp/requirements.txt
COPY --chown=${USER}:${USER} files/entrypoint.sh /usr/local/bin/
COPY files/mycroft.conf /etc/mycroft/mycroft.conf
COPY --chown=${USER}:${USER} files/server.json /home/${USER}/.config/hivemind-core/server.json

USER root

RUN chmod +x /usr/local/bin/entrypoint.sh

RUN uv pip install -r /tmp/requirements.txt \
  && mkdir -p ${HOME}/.config/{hivemind,hivemind-core} ${HOME}/.local/{hivemind,share/hivemind} \
  && rm -rf /tmp/requirements.txt

USER "$USER"

ENTRYPOINT ["/bin/bash", "/usr/local/bin/entrypoint.sh"]

WORKDIR /home/${USER}
