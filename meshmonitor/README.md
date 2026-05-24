# MeshMonitor — Home Assistant Add-on

[🇷🇺 Русская версия](https://github.com/BrainDeLook/meshmonitor-ha/blob/main/README_RU.md)

[![GitHub Release](https://img.shields.io/github/release/BrainDeLook/meshmonitor-ha.svg?style=for-the-badge)](https://github.com/BrainDeLook/meshmonitor-ha/releases)
[![License](https://img.shields.io/github/license/BrainDeLook/meshmonitor-ha.svg?style=for-the-badge)](LICENSE)

![MeshMonitor Logo](meshmonitor/logo.png)

Home Assistant Add-on for [MeshMonitor](https://github.com/Yeraze/meshmonitor) — a powerful dashboard and Virtual Node Server for [Meshtastic](https://meshtastic.org) mesh networks.

## Features

- 📡 Connect to Meshtastic node via TCP or USB Serial
- 🗺️ Live map with node positions
- 📊 Network telemetry and statistics
- 🔌 **Virtual Node Server** — allows multiple simultaneous connections from Meshtastic mobile apps on port `4404`
- 🏠 Full Home Assistant Ingress support (no extra ports needed for the dashboard)
- 🔄 Persistent data across restarts

## Configuration

| Option | Description | Default |
|--------|-------------|---------|
| `connection_type` | Connection type: `tcp` or `serial` | `tcp` |
| `MESHTASTIC_NODE_IP` | IP address of your Meshtastic node (TCP mode) | `192.168.1.231` |
| `MESHTASTIC_TCP_PORT` | TCP port of the node (TCP mode) | `4403` |
| `MESHTASTIC_SERIAL_PORT` | Serial port path (Serial mode) | `/dev/ttyUSB0` |
| `SESSION_SECRET` | Secret key for session encryption | — |
| `DISABLE_ANONYMOUS` | Require login to view dashboard | `false` |

## Connecting via USB Serial

If your Meshtastic node is connected via USB, select `serial` as the connection type and specify the correct port. Supported devices:

- `/dev/ttyUSB0`, `/dev/ttyUSB1`
- `/dev/ttyACM0`, `/dev/ttyACM1`

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
