# Caddy with the Cloudflare DNS module, for ACME DNS-01 certificates.
# Dependabot keeps both caddy tags current; bump the module by hand.
FROM caddy:2.11.7-builder AS builder
RUN xcaddy build --with github.com/caddy-dns/cloudflare@v0.2.4

FROM caddy:2.11.7
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
