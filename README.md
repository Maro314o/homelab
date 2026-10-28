# Docker Homelab


## Podman deployment

On this server, start the stack with:

```sh
/home/massimiliano/.local/bin/podman-compose -f docker-compose.yml -f compose.podman.yaml -p docker-lab up -d
```

The external Podman network `local-shared` must already exist. Keep `.env` private and out of Git. In addition to the other service settings, MediaWiki requires independently generated random values for `MW_SECRET_KEY` and `MW_UPGRADE_KEY`.

Home Assistant stores its active HTTP proxy settings in its private `.storage` directory, which is not included in this repository. The user systemd service and its retry override are also managed outside this repository.
