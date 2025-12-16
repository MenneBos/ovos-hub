FROM jarbasai/ovos-base-audio:latest

ENV OVOS_SERVICE_NAME=voice

COPY files/requirements.txt /tmp/requirements.txt
COPY files/entrypoint.sh /usr/local/bin/entrypoint.sh

USER root

# NOTE: this repository is archived, it is equivalent to the classic mycroft-core listening loop
# dependencies need to be manually handled
RUN uv pip install -r /tmp/requirements.txt
RUN uv pip install git+https://github.com/OpenVoiceOS/mycroft-classic-listener --no-deps
RUN uv pip install git+https://github.com/OpenVoiceOS/ovos-backend-client --no-deps

USER "$USER"

ENTRYPOINT ["/bin/bash", "/usr/local/bin/entrypoint.sh"]

WORKDIR "/home/${USER}"
