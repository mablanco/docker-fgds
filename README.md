# docker-fgds

> **DEPRECATED:** this image is no longer maintained and will not receive updates. Fast Google Dorks Scan queries Google with plain `curl` requests, and Google now requires JavaScript to return search results, so every query comes back as "No results" even for sites that have matches. The upstream script has not been updated to deal with this.

Docker image for Fast Google Dorks Scan (FGDS), a script to enumerate web-sites using Google dorks (<https://github.com/IvanGlinkin/Fast-Google-Dorks-Scan/>). This image it's built upon Alpine Linux, so it has the smallest possible footprint when launched.

## How to use this image

I recommend running the Docker container with the `--rm` parameter, which will remove the container after finishing its execution.

This command will run FGDS with no parameters, thus showing its presentation banner and inline help:

```bash
~ docker run --rm mablanco/fgds
```

This command will scan a domain:

```bash
~ docker run -t --rm mablanco/fgds megacorp.one
```
