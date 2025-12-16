FROM jarbasai/ovos-base-audio:latest
USER root

RUN uv pip install ovos-tts-server

HEALTHCHECK --interval=60s --timeout=10s --retries=3 --start-period=60s \
    CMD curl http://127.0.0.1:9666/status || kill 1

# NOTE: need to be git cloned, bundled model size doesnt allow publishing package to pypi
RUN git clone https://github.com/OpenVoiceOS/ovos-tts-plugin-matxa-multispeaker-cat

# TODO: doesnt allow latest opm version, handle deps manually for now
RUN uv pip install -e ovos-tts-plugin-matxa-multispeaker-cat --no-deps
RUN uv pip install onnxruntime phonemizer scipy soundfile pyyaml

USER $USER

ENTRYPOINT ovos-tts-server --engine ovos-tts-plugin-matxa-multispeaker-cat

EXPOSE 9666

