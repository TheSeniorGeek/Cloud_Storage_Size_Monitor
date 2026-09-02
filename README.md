# Cloud Storage Folder Size Monitor for macOS

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-macOS-lightgrey.svg)](https://apple.com/macos)
[![YouTube](https://img.shields.io/badge/YouTube-The%20Senior%20Geek-red.svg)](https://youtube.com/@TheSeniorGeek)

An automated, lightweight utility designed to periodically check and log the size of cloud storage directories (such as local Microsoft OneDrive data and system sync caches) on macOS. It allows you to monitor sync progress and local disk usage during massive data transfers without manually checking folder sizes in Finder.

---

## 📺 Video Walkthrough

A complete video walkthrough and setup demonstration is available on [The Senior Geek YouTube Channel](https://youtube.com/@TheSeniorGeek).

---

## ✨ Features

- **Periodic Folder Monitoring:** Automatically recalculates directory sizes at a configurable interval.
- **Dual Target Tracking:** Keeps tabs on both primary data and system sync cache directories simultaneously.
- **Clean Terminal Output:** Prints formatted, human-readable folder sizes alongside real-time timestamps.
- **Zero Dependencies:** Native macOS Zsh script—no extra runtimes or packages required.

---

## 🚀 Quick Start Guide

### 1. Direct Download 

1. Click [`Cloud_Storage_Size_Monitor.command`](Cloud_Storage_Size_Monitor.command) to open the file in GitHub.
2. Click the **Download raw file** button near the upper-right corner of the file view, then save the file to your **Downloads** folder.

### 2. Configure Your Paths

Before running the script, open `Cloud_Storage_Size_Monitor.command` in TextEdit (or your preferred editor) and confirm the paths match your volume name and folder structure:

```bash
BASE_DIR="/Volumes/OneDrive_Jim/.CloudStorage"
DATA_DIR="$BASE_DIR/Data"
SYSTEM_DIR="$BASE_DIR/System"
```
*(Update `/Volumes/OneDrive_Jim/` if your external drive or volume is named differently.)*

### 3. Make Executable (First Time Only)

1. Open the Terminal app.
2. Make the file executable by entering the following command:

   ```bash
   chmod +x ~/Downloads/Cloud_Storage_Size_Monitor.command
   ```

### 4. Run

Double-click `Cloud_Storage_Size_Monitor.command` in Finder to launch the live monitor in a Terminal window.

---

## How to Stop the Script
Press **Ctrl + C** inside the open Terminal window at any time.  
Closing the Terminal window will also terminate the monitoring loop.

---

## Contributing & Community
Suggestions, bug reports, and pull requests are welcome! If you encounter issues or have ideas to improve the utility:

- Open an Issue on GitHub.
- Submit a Pull Request with your enhancements.

---

## License
Distributed under the MIT License. See LICENSE for more information.
