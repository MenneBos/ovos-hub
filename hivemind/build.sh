
docker build -f core/Dockerfile -t jarbasai/hivemind-core:latest ./core
docker build -f player/Dockerfile -t jarbasai/hivemind-player:latest ./player
docker build -f persona/Dockerfile -t jarbasai/hivemind-persona:latest ./persona
docker build -f chatroom/Dockerfile -t jarbasai/hivemind-chatroom:latest ./chatroom
docker build -f webchat/Dockerfile -t jarbasai/hivemind-webchat:latest ./webchat
docker build -f matrix-bot/Dockerfile -t jarbasai/hivemind-matrix-bot:latest ./matrix-bot