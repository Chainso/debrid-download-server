ARG USE_SONARR_EXTRA_BUILD_FILE

FROM linuxserver/radarr as radarr

RUN apt-get update -y
RUN apt-get install unzip -y
RUN apt-get install cron -y
RUN apt-get install vim -y

RUN command -v rclone >/dev/null || curl https://rclone.org/install.sh | bash

WORKDIR /build

FROM radarr as extra-build-false

FROM radarr as extra-build-true

ONBUILD ARG RADARR_EXTRA_BUILD_FILE
ONBUILD COPY "${RADARR_EXTRA_BUILD_FILE}" .
ONBUILD RUN ./$(basename "${RADARR_EXTRA_BUILD_FILE}")

FROM extra-build-${USE_RADARR_EXTRA_BUILD_FILE}