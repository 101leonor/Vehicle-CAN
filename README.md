# 🚗 Vehicle CAN Bus Tutorial with CAN-utils and Virtual CAN (VCAN)

This repository provides a step-by-step guide to using **Linux SocketCAN** and `can-utils` for automotive applications. Whether you have physical CAN hardware or want to simulate CAN traffic using a **virtual CAN interface (vcan)**, this guide will help you get started. 

A practical example of changing interior lights (Ford Mustang Mach-E case) is included to demonstrate the potential of these tools.

---

## 📦 What’s Inside

- `can_utils_basics.sh` — Basic setup and usage of `can-utils` with physical CAN interfaces
- `can_utils_over_vcan.sh` — Create and test a virtual CAN interface for simulation
- `change_lights_script.sh` — Sample script that simulates sending CAN frames to change interior lights

---

## 🧰 Requirements

- Linux (Ubuntu/Debian recommended)
- `can-utils`
- Root or sudo access

---

## 🛠️ Installation

```bash
sudo apt-get update
sudo apt-get install can-utils
```

---

## 📄 Scripts

1️⃣ CAN-utils Basics (Physical CAN Interface)

Script: can_utils_basics.sh

```bash
sudo bash scripts/can_utils_basics.sh
```

Overview:
  - Installs can-utils
  - Brings up can0 interface with 500000 bitrate
  - Shows how to monitor CAN traffic with candump

⚠️ If you don’t see traffic:
  - Check OBD-II to USB/CAN adapter connection
  - Confirm bitrate compatibility (500000, 250000, 125000)
  - Your vehicle may have a Security Gateway blocking traffic

2️⃣ Virtual CAN (VCAN) Simulation

Script: can_utils_over_vcan.sh

```bash
sudo bash scripts/can_utils_over_vcan.sh
```

Instructions (use multiple terminals):
  Terminal 1: Generate random traffic
  ```bash
      cangen vcan0
  ```
  Terminal 2: Monitor traffic  
  ```bash
      candump vcan0
  ```
  Terminal 1: Send specific CAN frames
   ```bash
      cansend vcan0 123#1122334125667767
   ```
  Terminal 2: Log incoming frames
   ```bash 
      candump vcan0 -l
   ```
3️⃣ Interior Lights Script (Simulated)

Script: change_lights_script.sh
```bash
sudo bash scripts/change_lights_script.sh
```
What It Does:
  - Sends alternating CAN frames to simulate turning interior lights on/off in a loop.
  - Originally tested on Ford Mustang Mach-E.
  - Frame IDs and data will vary depending on vehicle make/model.
