
docker build -f nemo/Dockerfile -t jarbasai/ovos-stt-server-nemo-rocm:latest ./nemo
docker build -f hitz/Dockerfile -t jarbasai/ovos-stt-server-hitz-rocm:latest ./hitz
docker build -f whisper/Dockerfile -t jarbasai/ovos-stt-server-whisper-rocm:latest ./whisper
docker build -f mynorthai/Dockerfile -t jarbasai/ovos-stt-server-mynorthai-rocm:latest ./mynorthai
