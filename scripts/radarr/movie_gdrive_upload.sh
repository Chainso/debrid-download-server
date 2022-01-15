#!/bin/bash
upload() {
    if [ ! -z "${radarr_moviefile_path}" ]; then
        local remote_path="$(echo ${radarr_moviefile_path} | cut -d'/' -f4- | rev | cut -d'/' -f2- | rev)"
        local full_remote_path="${RCLONE_SERVER}:${remote_path}"

        echo "Copying ${radarr_moviefile_path} to ${full_remote_path}"

        rclone copy "${radarr_moviefile_path}" "${full_remote_path}" -P --config "${rclone_conf}"
        rclone dedupe --dedupe-mode newest "${RCLONE_SERVER}:/"
    fi
}

if [ "${USE_RCLONE}" = true ]; then
    upload >> /config/logs/rclone.txt 2>&1 &
fi
