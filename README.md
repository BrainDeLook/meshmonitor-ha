# MeshMonitor — Home Assistant Add-on

[🇷🇺 Русская версия](README_RU.md)

[![GitHub Release](https://img.shields.io/github/release/BrainDeLook/meshmonitor-ha.svg?style=for-the-badge)](https://github.com/BrainDeLook/meshmonitor-ha/releases)
[![License](https://img.shields.io/github/license/BrainDeLook/meshmonitor-ha.svg?style=for-the-badge)](LICENSE)

![MeshMonitor Logo](meshmonitor/logo.png)

Home Assistant Add-on for [MeshMonitor](https://github.com/Yeraze/meshmonitor) — a powerful dashboard and Virtual Node Server for [Meshtastic](https://meshtastic.org) mesh networks.

## Features

- 📡 Connect to Meshtastic node via TCP
- 🗺️ Live map with node positions
- 📊 Network telemetry and statistics
- 🔌 **Virtual Node Server** — allows multiple simultaneous connections from Meshtastic mobile apps on port `4404`
- 🏠 Full Home Assistant Ingress support (no extra ports needed for the dashboard)
- 🔄 Persistent data across restarts

## Installation

### One-click install

[![Add Repository to Home Assistant](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FBrainDeLook%2Fmeshmonitor-ha)

1. Click the button above to add this repository to Home Assistant
2. Go to **Settings → Add-ons → Add-on Store**
3. Find **MeshMonitor** and click **Install**
4. Configure the add-on (see Configuration below)
5. Click **Start**

### Manual install

1. Go to **Settings → Add-ons → Add-on Store**
2. Click the three dots (⋮) in the top right → **Repositories**
3. Add: `https://github.com/BrainDeLook/meshmonitor-ha`
4. Find **MeshMonitor** in the store and install it

## Configuration

| Option | Description | Default |
|--------|-------------|---------|
| `MESHTASTIC_NODE_IP` | IP address of your Meshtastic node | `192.168.1.231` |
| `MESHTASTIC_TCP_PORT` | TCP port of the node | `4403` |
| `SESSION_SECRET` | Secret key for session encryption | — |
| `DISABLE_ANONYMOUS` | Require login to view dashboard | `false` |

## Virtual Node Server

The add-on exposes port **4404** as a Virtual Node Server. This allows multiple Meshtastic mobile apps to connect simultaneously to your node — something the node itself doesn't support natively.

To connect your mobile app:

1. Open Meshtastic app → Settings → Connect
2. Choose **TCP**
3. Enter your Home Assistant IP and port `4404`

## Credits

- [MeshMonitor](https://github.com/Yeraze/meshmonitor) by [@Yeraze](https://github.com/Yeraze)
- Add-on inspired by [sgruber's work](https://git.sgruber.at/ha/addons)

## License

MIT
