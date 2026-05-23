MeshMonitor — Home Assistant Add-on
![GitHub Release](https://img.shields.io/github/release/BrainDeLook/meshmonitor-ha.svg?style=for-the-badge)
![License](https://img.shields.io/github/license/BrainDeLook/meshmonitor-ha.svg?style=for-the-badge)
![MeshMonitor Logo](meshmonitor/logo.png)
Home Assistant Add-on for MeshMonitor — a powerful dashboard and Virtual Node Server for Meshtastic mesh networks.
Features
📡 Connect to Meshtastic node via TCP
🗺️ Live map with node positions
📊 Network telemetry and statistics
🔌 Virtual Node Server — allows multiple simultaneous connections from Meshtastic mobile apps on port `4404`
🏠 Full Home Assistant Ingress support (no extra ports needed for the dashboard)
🔄 Persistent data across restarts
Installation
One-click install
![Add Repository to Home Assistant](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)
Click the button above to add this repository to Home Assistant
Go to Settings → Add-ons → Add-on Store
Find MeshMonitor and click Install
Configure the add-on (see Configuration below)
Click Start
Manual install
Go to Settings → Add-ons → Add-on Store
Click the three dots (⋮) in the top right → Repositories
Add: `https://github.com/BrainDeLook/meshmonitor-ha`
Find MeshMonitor in the store and install it
Configuration
Option	Description	Default
`MESHTASTIC_NODE_IP`	IP address of your Meshtastic node	`192.168.1.231`
`MESHTASTIC_TCP_PORT`	TCP port of the node	`4403`
`SESSION_SECRET`	Secret key for session encryption	—
`DISABLE_ANONYMOUS`	Require login to view dashboard	`false`
Virtual Node Server
The add-on exposes port 4404 as a Virtual Node Server. This allows multiple Meshtastic mobile apps to connect simultaneously to your node — something the node itself doesn't support natively.
To connect your mobile app:
Open Meshtastic app → Settings → Connect
Choose TCP
Enter your Home Assistant IP and port `4404`
Credits
MeshMonitor by @Yeraze
Add-on inspired by sgruber's work
License
MIT
