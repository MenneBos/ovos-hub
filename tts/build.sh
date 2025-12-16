
docker build -f google-tx/Dockerfile -t jarbasai/ovos-tts-server-google-tx:latest ./google-tx
docker build -f matxa/Dockerfile -t jarbasai/ovos-tts-server-matxa:latest ./matxa
docker build -f mimic/Dockerfile -t jarbasai/ovos-tts-server-mimic:latest ./mimic
docker build -f mimic3/Dockerfile -t jarbasai/ovos-tts-server-mimic3:latest ./mimic3
docker build -f cotovia/Dockerfile -t jarbasai/ovos-tts-server-cotovia:latest ./cotovia
docker build -f nos/Dockerfile -t jarbasai/ovos-tts-server-nos:latest ./nos
docker build -f piper/Dockerfile -t jarbasai/ovos-tts-server-piper:latest ./piper
docker build -f sam/Dockerfile -t jarbasai/ovos-tts-server-sam:latest ./sam
