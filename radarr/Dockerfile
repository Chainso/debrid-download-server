FROM linuxserver/radarr

RUN apt-get update -y
RUN apt-get install unzip

RUN command -v rclone >/dev/null || curl https://rclone.org/install.sh | bash