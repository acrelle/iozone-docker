# iozone

Image for iozone running on alpine (amd64 + arm32v6 for Raspberry 1 onwards variants available)

This provides a container for: http://www.iozone.org/

## Source
https://github.com/acrelle/iozone-docker

## Build

[![](https://images.microbadger.com/badges/version/acrelle/iozone.svg)](https://microbadger.com/images/acrelle/iozone "Get your own version badge on microbadger.com")[![](https://images.microbadger.com/badges/image/acrelle/iozone.svg)](https://microbadger.com/images/acrelle/iozone "Get your own image badge on microbadger.com")[![Build Status](https://travis-ci.com/acrelle/iozone-docker.svg?branch=master)](https://travis-ci.com/acrelle/iozone-docker)

https://hub.docker.com/r/acrelle/iozone/

### Supported architectures

`amd64`,`arm32v6`

## Usage

```
 docker run --rm acrelle/iozone -e -I -a -s 100M -r 4k -i 0 -i 1 -i 2
```
