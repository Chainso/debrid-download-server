#!/bin/bash
rclone_server=gdrive-media-server
rclone_conf=/config/rclone/rclone.conf

upload() {
    if [ ! -z "${sonarr_episodefile_path}" ]; then
        local remote_path="$(echo ${sonarr_episodefile_path} | cut -d'/' -f4- | rev | cut -d'/' -f2- | rev)"
        local full_remote_path="${rclone_server}:${remote_path}"

        echo "Copying ${sonarr_episodefile_path} to ${full_remote_path}"

        rclone copy "${sonarr_episodefile_path}" "${full_remote_path}" -P --config "${rclone_conf}"
        rclone dedupe --dedupe-mode newest "${rclone_server}:/"
    fi
}

upload >> /config/logs/rclone.txt 2>&1 &
