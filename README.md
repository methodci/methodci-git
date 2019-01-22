# methodci-git

Docker inspection runtime for MethodCI

## Build

```bash
docker build --rm -t methodci-git .
```

## Run

```bash
docker run --rm \
	-e REMOTE_URL=https://github.com/donatj/flags.git \
	-e COMMIT_REF=refs/heads/master \
	methodci-git
```

To allow private repository access append

```bash
	-e NETRC_PASSWORD='<GITHUB TOKEN>'
```