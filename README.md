# caddy-cloudflare

[Caddy](https://caddyserver.com) built with the
[Cloudflare DNS module](https://github.com/caddy-dns/cloudflare), so Caddy can get
certificates with the ACME DNS-01 challenge.

```
docker pull ghcr.io/diybits/caddy-cloudflare:<tag>
```

- The image is the official `caddy` image with its binary replaced by one built
  with `xcaddy`. Nothing else is added; the Cloudflare API token and the
  Caddyfile are provided at run time.
- Tags are `YYYY.DDD.N`: the UTC day of the year and the build number that day.
  There is no `latest`; pin a tag.
- A push to `main` that changes the `Dockerfile` builds and publishes a new tag.
  Dependabot proposes new `caddy` versions weekly.
