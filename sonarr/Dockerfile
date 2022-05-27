ARG USE_SONARR_EXTRA_BUILD_FILE

FROM linuxserver/sonarr as sonarr

RUN apt-get install unzip -y
RUN command -v rclone >/dev/null || curl https://rclone.org/install.sh | bash
RUN apt-get install -y cron
RUN apt-get install vim -y

WORKDIR /build

FROM sonarr as extra-build-false

FROM sonarr as extra-build-true

ONBUILD ARG SONARR_EXTRA_BUILD_FILE
ONBUILD COPY "${SONARR_EXTRA_BUILD_FILE}" .
ONBUILD RUN ./$(basename "${SONARR_EXTRA_BUILD_FILE}")

FROM extra-build-${USE_SONARR_EXTRA_BUILD_FILE}