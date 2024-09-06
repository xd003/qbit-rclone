# Use linuxserver/qbittorrent as the base image
FROM linuxserver/qbittorrent

# Install rclone
RUN apk update && \
    apk add --no-cache curl && \
    curl https://rclone.org/install.sh | bash
