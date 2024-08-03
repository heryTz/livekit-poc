FROM ubuntu AS base

FROM base AS dev
RUN apt update && \
  apt install -y curl && \
  curl -sSL https://get.livekit.io | bash && \
  curl -sSL https://get.livekit.io/cli | bash
CMD [ "livekit-server", "--dev", "--bind", "0.0.0.0", "--config", "/etc/livekit.yaml" ]