# Use linuxserver/qbittorrent as the base image
FROM linuxserver/qbittorrent:latest

# Install dependencies and rclone using the official install script
RUN apk update && \
    apk add --no-cache curl bash unzip python3 py3-pip && \
    curl https://rclone.org/install.sh | bash && \
    rclone version

# Install qbittorrent-api using pip
RUN pip3 install qbittorrent-api --break-system-packages
