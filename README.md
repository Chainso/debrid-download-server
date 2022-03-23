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

<br />

### Environment

#### Services

The default ports for each services are in the table below.

| Service | Port |
|:-|:-:|
| [Sonarr](https://sonarr.tv/) | 8989 |
| [Radarr](https://radarr.video/) | 7878 |
| [Readarr](https://readarr.com/) | 8787 |
| [Jackett](https://github.com/Jackett/Jackett) | 9117 |
| [RDT Client](https://github.com/rogerfar/rdt-client) | 6500 |
| [Plex](https://www.plex.tv/en-ca/) | 32400 |

<br />

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