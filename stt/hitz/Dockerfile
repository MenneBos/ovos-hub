FROM jarbasai/ovos-stt-server-nemo-rocm:latest

COPY gpu.conf /etc/mycroft/mycroft.conf

ENTRYPOINT ovos-stt-server --engine ovos-stt-plugin-nemo

EXPOSE 8080
