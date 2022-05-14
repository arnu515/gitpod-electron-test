FROM gitpod/workspace-full-vnc:latest

USER root
# Install custom tools, runtime, etc.
RUN apt-get update \
    && apt-get install -y twm libgtk-3-0 libnss3 libasound2 libx11-dev libxkbfile-dev libasound2-dev libgtk-3-dev libnss3-dev \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
