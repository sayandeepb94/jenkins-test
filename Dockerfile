# Use an official base image with minimal tools
FROM debian:bookworm-slim

# Set environment variables to avoid interaction during install
ENV DEBIAN_FRONTEND=noninteractive


WORKDIR /app


COPY . /app/


RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    build-essential && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["python3"]

CMD ["hello-world.py"]
