# Use official Alpine Linux as base
FROM alpine:latest

# Install Tailscale
RUN apk add --no-cache tailscale

# Start Tailscale on container startup
CMD ["tailscaled", "--state=/var/lib/tailscale/tailscaled.state"]
