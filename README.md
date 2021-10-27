# GitBucket ARM64v8 Docker

[GitBucket](https://github.com/gitbucket/gitbucket)を，QNAP製NASの"Container Station"などのARM64v8のDocker環境で動かすためのリポジトリ．

## Build

```sh
docker build -t arm64v8/gitbucket:4.35.3 --build-arg VERSION=4.35.3 -f Dockerfile .
```
