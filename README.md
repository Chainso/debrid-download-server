# Debrid Download Server

A download server to downloader files from trackers using a debrid service.

<br />

## Contents
- [Setup](#setup)
    - [Requirements](#requirements)
    - [Environment](#environment)
        - [Public Variables](#public-variables)
        - [Private Variables](#private-variables)
    - [Installation](#installation)

<br />

## Setup

### Requirements

| Software | Version |
|:-|:-:|
| Docker | 20.x+ |
| rclone | 1.5x+ |

<br />

### Environment

#### Public Variables

Feel free to change the values in `public.env` if you wish to do so. If you are using rclone to back up your downloads to another server, in the `config/rclone` folder, add your `rclone.conf`.

<br />

#### Private Variables

Any private variables that you want to use should be in `private.env`. They will be passed into the docker container.

<br />

### Installation

1. Run `run.sh`

<br />

You can run a post-build script for Sonarr and Radarr by adding commands changing the environment variables `SONARR_EXTRA_BUILD_FILE` and `RADARR_EXTRA_BUILD_FILE` to point to your build scripts. These will be called in the Dockerfiles.