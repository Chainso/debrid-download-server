#!/bin/bash
upload() {
    if [ ! -z "${sonarr_episodefile_path}" ]; then
        local remote_path="$(echo ${sonarr_episodefile_path} | cut -d'/' -f4- | rev | cut -d'/' -f2- | rev)"
        local full_remote_path="${RCLONE_SERVER}:${remote_path}"

        echo "Copying ${sonarr_episodefile_path} to ${full_remote_path}"

        rclone copy "${sonarr_episodefile_path}" "${full_remote_path}" -P --config "${rclone_conf}"
        rclone dedupe --dedupe-mode newest "${RCLONE_SERVER}:/"
    fi
}


if [ "${USE_RCLONE}" = true ]; then
    upload >> /config/logs/rclone.txt 2>&1 &
fi
