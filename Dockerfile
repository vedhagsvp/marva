FROM python:3.9-slim

WORKDIR /

RUN apt update && \
    apt -y install curl git wget libicu-dev libjansson4 && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

COPY trainer /trainer

ENTRYPOINT ["python", "-m", "trainer.task"]
