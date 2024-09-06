# Use linuxserver/qbittorrent as the base image
FROM linuxserver/qbittorrent

# Install rclone
RUN apt-get update && \
    apt-get install -y curl && \
    curl https://rclone.org/install.sh | bash && \
    apt-get clean
