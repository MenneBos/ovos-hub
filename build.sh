# base images contain shared dependencies + create a OVOS user + healthcheck
docker build -t jarbasai/ovos-base:latest ./base
docker build -t jarbasai/ovos-base-audio:latest ./base-sound
docker build -t jarbasai/ovos-base-rocm:latest ./base-rocm

docker build -t jarbasai/ovos-core:latest ./core/core
docker build -t jarbasai/ovos-messagebus ./core/messagebus
docker build -t jarbasai/ovos-messagebus-rust ./core/messagebus-rust
docker build -t jarbasai/ovos-gui-websocket ./core/gui-websocket
docker build -t jarbasai/ovos-audio ./core/audio
docker build -t jarbasai/ovos-phal ./core/phal
docker build -t jarbasai/ovos-simple-listener ./core/simple-listener
docker build -t jarbasai/ovos-dinkum-listener ./core/dinkum-listener
docker build -t jarbasai/ovos-classic-listener ./core/classic-listener

docker build -t jarbasai/ovos-yaml-editor:latest ./utils/ovos-yaml-editor
docker build -t jarbasai/ovos-skill-settings-editor:latest ./utils/ovos-skill-settings-editor

docker build -t jarbasai/ovos-skill-alerts:latest ./skills/skill-alerts
docker build -t jarbasai/ovos-skill-camera:latest ./skills/skill-camera
docker build -t jarbasai/ovos-skill-date-time:latest ./skills/skill-date-time
docker build -t jarbasai/ovos-skill-duckduckgo:latest ./skills/skill-duckduckgo
docker build -t jarbasai/ovos-skill-easter-eggs:latest ./skills/skill-easter-eggs
docker build -t jarbasai/ovos-skill-fallback-unknown:latest ./skills/skill-fallback-unknown
docker build -t jarbasai/ovos-skill-ggwave:latest ./skills/skill-ggwave
docker build -t jarbasai/ovos-skill-hello-world:latest ./skills/skill-hello-world
docker build -t jarbasai/ovos-skill-homescreen:latest ./skills/skill-homescreen
docker build -t jarbasai/ovos-skill-jokes:latest ./skills/skill-jokes
docker build -t jarbasai/ovos-skill-parrot:latest ./skills/skill-parrot
docker build -t jarbasai/ovos-skill-personal:latest ./skills/skill-personal
docker build -t jarbasai/ovos-skill-randomness:latest ./skills/skill-randomness
docker build -t jarbasai/ovos-skill-tunein:latest ./skills/skill-tunein
docker build -t jarbasai/ovos-skill-volume:latest ./skills/skill-volume
docker build -t jarbasai/ovos-skill-weather:latest ./skills/skill-weather
docker build -t jarbasai/ovos-skill-wikihow:latest ./skills/skill-wikihow
docker build -t jarbasai/ovos-skill-wikipedia:latest ./skills/skill-wikipedia
docker build -t jarbasai/ovos-skill-wolfie:latest ./skills/skill-wolfie
docker build -t jarbasai/ovos-skill-wordnet:latest ./skills/skill-wordnet

docker build -t jarbasai/hivemind-core:latest ./hivemind/core
docker build -t jarbasai/hivemind-player:latest ./hivemind/player
docker build -t jarbasai/hivemind-persona:latest ./hivemind/persona
docker build -t jarbasai/hivemind-chatroom:latest ./hivemind/chatroom
docker build -t jarbasai/hivemind-webchat:latest ./hivemind/webchat
docker build -t jarbasai/hivemind-matrix-bot:latest ./hivemind/matrix-bot

docker build -t jarbasai/ovos-translate-server-nllb-rocm:latest ./translate/nllb

docker build -t jarbasai/ovos-tts-server-google-tx:latest ./tts/google-tx
docker build -t jarbasai/ovos-tts-server-matxa:latest ./tts/matxa
docker build -t jarbasai/ovos-tts-server-mimic:latest ./tts/mimic
docker build -t jarbasai/ovos-tts-server-cotovia:latest ./tts/cotovia
docker build -t jarbasai/ovos-tts-server-nos:latest ./tts/nos
docker build -t jarbasai/ovos-tts-server-piper:latest ./tts/piper
docker build -t jarbasai/ovos-tts-server-sam:latest ./tts/sam

docker build -t jarbasai/ovos-stt-server-nemo-rocm:latest ./stt/nemo
docker build -t jarbasai/ovos-stt-server-hitz-rocm:latest ./stt/hitz
docker build -t jarbasai/ovos-stt-server-whisper-rocm:latest ./stt/whisper
docker build -t jarbasai/ovos-stt-server-mynorthai-rocm:latest ./stt/mynorthai