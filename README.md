# Linux System Monitor
![Linux Distribution](https://img.shields.io/badge/Linux-Ubuntu-%23E95420?logo=ubuntu)
![GNU Bash Version](https://img.shields.io/badge/Bash-4%2B-%234EAA25?logo=gnubash&logoColor=white)
[![License](https://img.shields.io/badge/license-MIT-orange)](LICENSE)
![Made By](https://img.shields.io/badge/Made%20By-Reginald%20Griffin%20II-%23E85C33)

A collection of Bash scripts for monitoring system health, checking server availability, and basic Linux administration. These scripts demonstrate foundational Linux automation skills applicable to cloud engineering and DevOps roles.

## 🚀 Features

| Script | Description |
|--------|-------------|
| `system_health.sh` | Monitors CPU load, memory usage, disk space, and top CPU processes. Generates a timestamped log. |
| `ping_check.sh` | Checks availability of multiple servers via ping, logs results, and identifies downtime. |
| `status.sh` | A simple system status script showing uptime and a confirmation message. |

## 📁 Project Structure
```
linux-system-monitor/
├── system_health.sh    # Main health monitoring script
├── ping_check.sh       # Server availability checker
├── status.sh           # Quick uptime status
└── README.md           # This file
```

## 🛠️ Prerequisites

- **Linux environment** (Ubuntu 20.04+, Debian 11+, or any distribution with Bash 4+)
- **Bash** (version 4+)
- **Basic Linux utilities**: `uptime`, `free`, `df`, `ps`, `ping`

## 📦 Installation

1. Clone the repository:

```bash
git clone https://github.com/ReggieRay210/linux-system-monitor.git
cd linux-system-monitor
```
2. Make scripts executable:
```
chmod +x *.sh
```
3. Move scripts to `~/bin/` and add to PATH for global access (**Optional**):
```
mkdir -p ~/bin
cp *.sh ~/bin/
export PATH = "$PATH:$Home/bin/"
```

## 📖 Usage 
### System Health Monitor
Run a comprehensive health check:
```
./system_health.sh
```
_Sample Output:_
```
=== System Health Report: Thu May 14 14:44:37 CDT 2026 ===
CPU Load (1 min): 0.12
Memory used: 1.2G/3.8G
Disk usage (root): 23%
Top 5 CPU processes:
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
ubuntu    1234  5.6  2.1 123456 45678 ?        Ssl  14:30   0:02 some-service
```
### Server Availability Check
Test connectivity to a pre-defined list of servers. This can be adjusted for custom use:
```
./ping_check.sh
```
_Sample Output:_
```
Starting ping checks at Thu May 14 14:45:01 CDT 2026
✅ google.com is UP
✅ github.com is UP
❌ amazon.com is DOWN (ICMP blocked)
✅ pandora.com is UP
```
⚠️Important: 
_Some services (like amazon.com) block ICMP pings. A "DOWN" result may indicate ICMP filtering rather than an actual downtime. For production monitoring, try TCP or HTTP checks._

### System Status
Quick system uptime check:
```
./status.sh
```
_Sample Output:_
```
14:46:02 up 2 days, 4:22, 2 users, load average: 0.08, 0.03, 0.01
System OK
```

## 🔧 Future Improvements
* Add email alerts for critical metrics
* Integrate with AWS CloudWatch for EC2 monitoring
* Expand ping check to support TCP/HTTP health checks
* Add HTML report generation
* Implement configuration file for thresholds and server lists

## 📜 License
MIT License — feel free to use, modify, and distribute.
See the `LICENSE` file for more information.

## 👤 Author
Reginald Griffin II — [@ReggieRay210](https://github.com/ReggieRay210)
