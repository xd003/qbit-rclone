# Use linuxserver/qbittorrent as the base image
FROM linuxserver/qbittorrent

# Install rclone
RUN apk update && \
    apk add --no-cache curl tar bash && \
    curl -O https://downloads.rclone.org/rclone-current-linux-amd64.tar.gz && \
    tar xzf rclone-current-linux-amd64.tar.gz && \
    mv rclone-*-linux-amd64/rclone /usr/bin/rclone && \
    chmod 755 /usr/bin/rclone && \
    rclone version && \
    rm -r rclone-*-linux-amd64 rclone-current-linux-amd64.tar.gz
