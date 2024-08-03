# LIVEKIT POC

## Development with Docker

- Obtain the IP value of `host.docker.internal`

```bash
docker run -it --rm alpine ping host.docker.internal
```

- Create the `livekit.yaml` file

  - Update the `webhook.urls` to fit with your webhook receiver

- Create the `egress.yaml` file

  - Update the `ws_url` value with your `host.docker.internal` IP

- Launch the container

```bash
docker compose up
```

You can customize the egress data bind mount using `LIVEKIT_EGRESS_DATA` env

```bash
LIVEKIT_EGRESS_DATA=/my/custom/host/path docker compose up
```

## Development without Docker

- If not using Docker, install the Livekit server from <https://docs.livekit.io/home/self-hosting/local/#Install-LiveKit-Server>

## Production

- Generate the key

```bash
./generate-key.sh
```

- Create the `livekit.yaml` file

  - Update the value of `keys` with the previously generated `API Key: API Secret`
  - Update the `webhook.urls` to fit with your webhook receiver

- Create the `egress.yaml` file

  - Update the values of `api_key` and `api_secret` with the previously generated `API Key: API Secret`

- Launch the container

```bash
docker compose up
```

You can customize the egress data bind mount using `LIVEKIT_EGRESS_DATA` env

```bash
LIVEKIT_EGRESS_DATA=/my/custom/host/path docker compose up
```

- Set up a TLS reverse proxy

```txt
livekit.example.com               ->  :7880
livekit-turn.example.com  443/tcp ->  :5349
```
