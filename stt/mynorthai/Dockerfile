FROM jarbasai/ovos-stt-server-whisper-rocm:latest

COPY gpu.conf /etc/mycroft/mycroft.conf

ENTRYPOINT ovos-stt-server --engine ovos-stt-plugin-whisper

EXPOSE 8080
