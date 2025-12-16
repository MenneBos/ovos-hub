FROM jarbasai/ovos-tts-server-cotovia:latest

USER root

RUN uv pip install ovos-tts-plugin-nos \
    && mkdir -p /home/${USER}/.local/share/nos_tts_models \
    && chown ${USER}:${USER} -R /home/${USER}

USER $USER

ENTRYPOINT ovos-tts-server --engine ovos-tts-plugin-nos

EXPOSE 9666
