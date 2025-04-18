# Docker

* [Website](https://ronin-rb.dev)
* [Issues](https://github.com/ronin-rb/docker/issues)
* [DockerHub](https://hub.docker.com/r/roninrb/ronin)
* [Discord](https://discord.gg/6WAb3PsVX9) |
  [Mastodon](https://infosec.exchange/@ronin_rb)

This repository provides `Dockerfile`s to build images with the
[ronin][ronin-rb] gems pre-installed.

[ronin-rb]: https://github.com/ronin-rb/

## What is Ronin?

[Ronin][website] is a free and Open Source [Ruby] toolkit for security research
and development. Ronin contains many different [CLI commands][ronin-synopsis]
and [Ruby libraries][ronin-rb] for a variety of security tasks, such as
encoding/decoding data, filter IPs/hosts/URLs, querying ASNs, querying DNS,
HTTP, [scanning for web vulnerabilities][ronin-vulns-synopsis],
[spidering websites][ronin-web-spider],
[install 3rd party repositories][ronin-repos-synopsis] of
[exploits][ronin-exploits] and/or
[payloads][ronin-payloads], [run exploits][ronin-exploits-synopsis],
[write new exploits][ronin-exploits-examples],
[managing local databases][ronin-db-synopsis],
[fuzzing data][ronin-fuzzer],
[performing recon][ronin-recon-synopsis], and much more.

[Ruby]: https://www.ruby-lang.org/
[website]: https://ronin-rb.dev/
[ronin]: https://github.com/ronin-rb/ronin#readme
[ronin-synopsis]: https://github.com/ronin-rb/ronin#synopsis
[ronin-support]: https://github.com/ronin-rb/ronin-support#readme
[ronin-repos]: https://github.com/ronin-rb/ronin-repos#readme
[ronin-repos-synopsis]: https://github.com/ronin-rb/ronin-repos#synopsis
[ronin-core]: https://github.com/ronin-rb/ronin-core#readme
[ronin-db]: https://github.com/ronin-rb/ronin-db#readme
[ronin-db-synopsis]: https://github.com/ronin-rb/ronin-db#synopsis
[ronin-fuzzer]: https://github.com/ronin-rb/ronin-fuzzer#readme
[ronin-web]: https://github.com/ronin-rb/ronin-web#readme
[ronin-web-server]: https://github.com/ronin-rb/ronin-web-server#readme
[ronin-web-spider]: https://github.com/ronin-rb/ronin-web-spider#readme
[ronin-web-user_agents]: https://github.com/ronin-rb/ronin-web-user_agents#readme
[ronin-code-asm]: https://github.com/ronin-rb/ronin-code-asm#readme
[ronin-code-sql]: https://github.com/ronin-rb/ronin-code-sql#readme
[ronin-payloads]: https://github.com/ronin-rb/ronin-payloads#readme
[ronin-exploits]: https://github.com/ronin-rb/ronin-exploits#readme
[ronin-exploits-synopsis]: https://github.com/ronin-rb/ronin-exploits#synopsis
[ronin-exploits-examples]: https://github.com/ronin-rb/ronin-exploits#examples
[ronin-vulns]: https://github.com/ronin-rb/ronin-vulns#readme
[ronin-vulns-synopsis]: https://github.com/ronin-rb/ronin-vulns#synopsis
[ronin-recon]: https://github.com/ronin-rb/ronin-recon#readme
[ronin-recon-synopsis]: https://github.com/ronin-rb/ronin-recon#synopsis

## Images

* [ronin:2.1.1-ubuntu, ronin:ubuntu, ronin:latest][ronin:ubuntu] -
  a base `ubuntu:22.04` image with [ronin gem] installed.
* [ronin:2.1.1-alpine, ronin:alpine][ronin:alpine] -
  a base `alpine:latest` image with [ronin gem] installed.
* [ronin:2.1.1-fedora, ronin:fedora][ronin:fedora] -
  a base `fedora:latest` image with [ronin gem] installed.
* [ronin:2.1.1-lab, ronin:lab][ronin:lab] -
  similar to [ronin:ubuntu] but with additional tools installed.

[ronin:alpine]: https://github.com/ronin-rb/docker/blob/v2.1.1/Dockerfile.alpine
[ronin:fedora]: https://github.com/ronin-rb/docker/blob/v2.1.1/Dockerfile.fedora
[ronin:ubuntu]: https://github.com/ronin-rb/docker/blob/v2.1.1/Dockerfile.ubuntu
[ronin:lab]: https://github.com/ronin-rb/docker/blob/v2.1.1/Dockerfile.lab

[ronin gem]: https://rubygems.org/gems/ronin

## Pull

```shell
docker pull roninrb/ronin
```

## Build

Build all images:

```shell
make build
```

Build only one image:

```shell
make ronin:lab
```

## Run

```shell
docker run -it roninrb/ronin:lab
ronin@6879ae803600:~$ ronin help
```

With your home-dir mounted:

```shell
docker run -it --mount type=bind,source="$HOME",target=/home/ronin roninrb/ronin:lab
```
