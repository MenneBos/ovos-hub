FROM jarbasai/ovos-base:latest
HEALTHCHECK --interval=60s --timeout=10s --retries=3 --start-period=60s \
    CMD curl --header "Connection: Upgrade" --header "Upgrade: Websocket" http://127.0.0.1:18181/core || kill 1

COPY files/requirements.txt /tmp/requirements.txt

USER root

RUN uv pip install -r /tmp/requirements.txt \
  && mkdir -p "/home/${USER}/.cache/ovos_gui_file_server" /etc/xdg \
  && chown "${USER}:${USER}" -R "/home/${USER}" \
  && rm -rf /tmp/* /var/tmp/*

USER "$USER"

ENTRYPOINT ["ovos-gui-service"]

WORKDIR "/home/${USER}"
