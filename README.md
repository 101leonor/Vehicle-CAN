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
