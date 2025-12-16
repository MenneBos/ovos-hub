FROM jarbasai/ovos-base:latest
COPY files/entrypoint.sh /usr/local/bin/entrypoint.sh

USER root

RUN uv pip install hivemind-flask-chatroom

USER "$USER"

ENTRYPOINT ["/bin/bash", "/usr/local/bin/entrypoint.sh"]

WORKDIR /home/${USER}

EXPOSE 8985
