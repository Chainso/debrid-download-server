ARG USE_SONARR_EXTRA_BUILD_FILE

FROM linuxserver/sonarr as sonarr
RUN command -v rclone >/dev/null || curl https://rclone.org/install.sh | bash

WORKDIR /build

FROM sonarr as extra-build-false

FROM sonarr as extra-build-true

ONBUILD ARG SONARR_EXTRA_BUILD_FILE
ONBUILD COPY "${SONARR_EXTRA_BUILD_FILE}" .
ONBUILD RUN ./$(basename "${SONARR_EXTRA_BUILD_FILE}")

FROM extra-build-${USE_SONARR_EXTRA_BUILD_FILE}