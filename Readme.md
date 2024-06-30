# Quick Minio

This is a quick and dirty docker compose file to stand up a Minio server because I got tired of rewriting this over and over again.
It is intended for local development purposes. Use in production at your own risk.

As alway, there is no warrenty on this. Use at your own risk and/or discretion.

## Prerequistes

### Required

* Docker
* Docker Compose

### Optional

* Make (if you want to use it)

## Usage

### Quickstart

Clone down and from the project directory run:

```bash
make run
```

Alternatively if you don't want to use make:

```bash
docker compose up -d
```

This quickstart mode will just use defaults and is highly recommended you __DO NOT EVER__ use this in production.

### Configuring

There is a __.env.template__ file. 
Copy this to __.env__ in the root directory.

Both Make and Docker Compose will automatically consume it.

## Notes

* Tested on a Linux OS. Should work the same on MacOs.
* Windows users will need to install make and fiddle a bit.
