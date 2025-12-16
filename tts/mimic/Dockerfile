FROM jarbasai/ovos-base-audio:latest
USER root

RUN uv pip install ovos-tts-server

HEALTHCHECK --interval=60s --timeout=10s --retries=3 --start-period=60s \
    CMD curl http://127.0.0.1:9666/status || kill 1

RUN curl -sS https://forslund.github.io/mycroft-desktop-repo/mycroft-desktop.gpg.key | gpg --dearmor -o /etc/apt/trusted.gpg.d/mimic.gpg \
    && echo "deb http://forslund.github.io/mycroft-desktop-repo bionic main" | tee -a /etc/apt/sources.list.d/mimic.list \
    && apt-get update \
    && apt-get install -y mimic \
    && uv pip install ovos-tts-plugin-mimic \
    && mkdir -p /home/${USER}/.cache/mycroft/MimicTTSPlugin \
    && chown ${USER}:${USER} -R /home/${USER} \
    && apt-get --purge autoremove -y \
    && apt-get clean \
    && rm -rf /home/${USER}/.cache/pip /var/lib/apt /var/log/{apt,dpkg.log}

USER $USER

ENTRYPOINT ovos-tts-server --engine ovos-tts-plugin-mimic

EXPOSE 9666
