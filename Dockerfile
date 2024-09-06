# Use linuxserver/qbittorrent as the base image
FROM linuxserver/qbittorrent:latest

# Install dependencies and rclone
RUN apk update && \
    apk add --no-cache curl unzip bash && \
    curl -O https://downloads.rclone.org/rclone-current-linux-arm64.zip && \
    unzip rclone-current-linux-amd64.zip && \
    mv rclone-*-linux-amd64/rclone /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone && \
    rclone version && \
    rm -r rclone-*-linux-amd64 rclone-current-linux-amd64.zip
