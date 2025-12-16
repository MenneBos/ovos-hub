FROM jarbasai/ovos-base-audio:latest
ENV OVOS_SERVICE_NAME=audio

COPY files/requirements.txt /tmp/requirements.txt
COPY files/entrypoint.sh /usr/local/bin/entrypoint.sh

USER root


RUN uv pip install -r /tmp/requirements.txt

USER "$USER"

ENTRYPOINT ["/bin/bash", "/usr/local/bin/entrypoint.sh"]

WORKDIR "/home/${USER}"
