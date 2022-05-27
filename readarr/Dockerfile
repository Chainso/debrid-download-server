ARG USE_READARR_EXTRA_BUILD_FILE

FROM linuxserver/readarr:develop as readarr

RUN apt-get install unzip -y
#RUN command -v rclone >/dev/null || curl https://rclone.org/install.sh | bash

WORKDIR /build

FROM readarr as extra-build-false

FROM readarr as extra-build-true

ONBUILD ARG READARR_EXTRA_BUILD_FILE
ONBUILD COPY "${READARR_EXTRA_BUILD_FILE}" .
ONBUILD RUN ./$(basename "${READARR_EXTRA_BUILD_FILE}")

#FROM extra-build-${USE_READARR_EXTRA_BUILD_FILE}
FROM extra-build-false