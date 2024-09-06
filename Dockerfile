# Use linuxserver/qbittorrent as the base image
FROM linuxserver/qbittorrent:latest

# Install dependencies and rclone using the official install script
RUN apk update && \
    apk add --no-cache curl bash && \
    curl https://rclone.org/install.sh | bash && \
    rclone version
