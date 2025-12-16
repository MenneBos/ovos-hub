FROM jarbasai/ovos-base-audio:latest
ENV OVOS_SERVICE_NAME=PHAL

COPY files/requirements.txt /tmp/requirements.txt
COPY files/entrypoint.sh /usr/local/bin/entrypoint.sh

USER root

RUN apt-get update \
  && apt-get install -y --no-install-recommends --no-install-suggests libasound2-dev procps ddcutil build-essential python3-dev network-manager \
  && uv pip install -r /tmp/requirements.txt \
  && chown "${USER}:${USER}" -R "/home/${USER}" \
  && apt-get --purge remove -y libasound2-dev build-essential python3-dev \
  && apt-get --purge autoremove -y \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* /var/log/{apt,dpkg.log} /tmp/* /var/tmp/*

USER "$USER"

ENTRYPOINT ["/bin/bash", "/usr/local/bin/entrypoint.sh"]

WORKDIR "/home/${USER}"
