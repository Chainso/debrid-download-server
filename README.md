# Debrid Download Server

A download server to downloader files from trackers using a debrid service.

<br />

## Contents
- [Installation](#installation)
    - [Requirements](#requirements)
    - [Environment](#environment)
        - [Before Setup](#before-setup)
        - [After Setup](#after-setup)
    - [Setup](#setup)

<br />

## Installation

### Requirements

| Software | Version |
|:-|:-:|
| Docker | 3.3+ |
| rclone | 1.5x |

<br />

### Environment

#### Before Setup

Before setting up, in the `config/rclone` folder, add your `rclone.conf`.

<br />

#### After Setup
After setting up, you need to add a `.env` file, and add the following values. Aftering adding the `.env` file, run `docker-compose up -d --build`.

| Name | Description |
|:-|:-:|
| SONARR_API_KEY | The API key for Sonarr. This can be found in Sonarr at Settings/General.
| RADARR_API_KEY | The API key for Radarr. This can be found in Radarr at Settings/General.

<br />

### Setup

1. Run `git clone https://github.com/Chainso/debrid-download-server && cd debrid-download-server`
2. Run `docker-compose up -d`