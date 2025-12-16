
docker build -f core/Dockerfile -t jarbasai/ovos-core:latest ./core
docker build -f messagebus/Dockerfile -t jarbasai/ovos-messagebus ./messagebus
docker build -t jarbasai/ovos-messagebus-rust ./messagebus-rust
docker build -f gui-websocket/Dockerfile -t jarbasai/ovos-gui-websocket ./gui-websocket
docker build -f audio/Dockerfile -t jarbasai/ovos-audio ./audio
docker build -f phal/Dockerfile -t jarbasai/ovos-phal ./phal
docker build -t jarbasai/ovos-simple-listener ./simple-listener
docker build -t jarbasai/ovos-dinkum-listener ./dinkum-listener
docker build -t jarbasai/ovos-classic-listener ./classic-listener