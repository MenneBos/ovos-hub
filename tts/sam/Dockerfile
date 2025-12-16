FROM jarbasai/ovos-base-audio:latest
USER root

RUN uv pip install ovos-tts-server

HEALTHCHECK --interval=60s --timeout=10s --retries=3 --start-period=60s \
    CMD curl http://127.0.0.1:9666/status || kill 1

RUN apt-get update \
    && apt-get install -y libsdl1.2-dev \
    && rm -rf /var/lib/apt /var/log/{apt,dpkg.log}

# SAM compiles to ~/.local/bin so doesnt play well with root user
RUN mkdir -p /root/.local/bin && mkdir -p /home/${USER}/.local/bin
RUN uv pip install ovos-tts-plugin-SAM
RUN mv /root/.local/bin/sam /home/${USER}/.local/bin/sam && chown 1000:1000 /home/${USER}/.local/bin/sam

USER $USER

ENTRYPOINT ovos-tts-server --engine ovos-tts-plugin-SAM

EXPOSE 9666
