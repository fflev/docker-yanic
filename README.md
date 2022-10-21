# docker-yanic

Dockerfile for [Yanic](https://github.com/FreifunkBremen/yanic)

## Usage

For yanic to properly listen on your interfaces it is required to run the container with the "host" network mode.

Example docker command:

```
docker run --network host \
  -v $(pwd)/config:/config \
  -v $(pwd)/data:/data\
  fkae/yanic:latest
```

An example minimal `config.toml` and `compose.yaml` for use with Docker Compose are provided in the Git repository.
The container expects a `config.toml` to exist inside the `/config` volume.

# Author

Felix Kaechele <felix@fflev.de>
