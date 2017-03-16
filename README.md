# Netshot Docker Container [![Docker Pulls](https://img.shields.io/docker/pulls/handcraftedbits/docker-netshot.svg?maxAge=2592000)](https://hub.docker.com/r/handcraftedbits/netshot)

A [Docker](https://www.docker.com) container used to run a [netshot](https://github.com/handcraftedbits/netshot) server.
See the [netshot REST API documentation](https://github.com/handcraftedbits/netshot#rest-api) for more information.

# Usage

## Running the netshot Server

Start the netshot Docker container as follows:

```bash
docker run -d -p 8000:8000 handcraftedbits/netshot
```

This will start netshot in the background with the default port `8000` and store screenshots in the container (i.e.,
they are not persisted upon shutdown).  If you wish to persist screenshots, bind a volume to
`/opt/container/screenshots`:

```bash
docker run -d -v /home/screenshots:/opt/container/screenshots -p 8000:8000 handcraftedbits/netshot
```

This will result in all screenshots being persisted in the local directory `/home/screenshots`.