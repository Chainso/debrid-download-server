#!/bin/bash
rclone_server=gdrive-media-server
rclone_conf=/config/rclone/rclone.conf

upload() {
    if [ ! -z "${radarr_moviefile_path}" ]; then
        local remote_path="$(echo ${radarr_moviefile_path} | cut -d'/' -f4- | rev | cut -d'/' -f2- | rev)"
        local full_remote_path="${rclone_server}:${remote_path}"

        echo "Copying ${radarr_moviefile_path} to ${full_remote_path}"

        rclone copy "${radarr_moviefile_path}" "${full_remote_path}" -P --config "${rclone_conf}"
        rclone dedupe --dedupe-mode newest "${rclone_server}:/"
    fi
}

upload >> /config/logs/rclone.txt 2>&1 &
