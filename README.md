# Open Source Audit — VLC Media Player

## Student Details
- Name: Chitpal Singh
- Registration Number: 24BEC10066
- Slot: B22
- Software Chosen: VLC Media Player

---

## Project Description
This project presents a structured audit of VLC Media Player as an open-source software. It explores its origin, licensing, ethical considerations, Linux footprint, and ecosystem.

In addition, five shell scripts are developed and executed on a Linux environment to demonstrate practical understanding of system commands, automation, and scripting concepts.

---

## System Environment
- Platform: Windows Subsystem for Linux (WSL)
- Distribution: Ubuntu
- Package Manager: apt

---

## Dependencies / Requirements

Ensure the following are installed:

sudo apt update  
sudo apt install vlc -y  

Other required tools (usually pre-installed):
- bash shell  
- coreutils (ls, du, grep, etc.)  
- dpkg (package manager)  

---

## Setup Instructions (Step-by-Step)

1. Install WSL on Windows:
   wsl --install

2. Open Ubuntu terminal and update system:
   sudo apt update

3. Install VLC Media Player:
   sudo apt install vlc -y

4. Navigate to project folder:
   cd ~/oss-audit-24BEC10066

5. Give execution permission to scripts:
   chmod +x *.sh

---

## How to Run Scripts (Step-by-Step)

Script 1 — System Identity Report  
./script1.sh  

Script 2 — FOSS Package Inspector  
./script2.sh vlc  

Script 3 — Disk and Permission Auditor  
./script3.sh  

Script 4 — Log File Analyzer  
./script4.sh /var/log/syslog error  

(If syslog is unavailable:)  
./script4.sh /var/log/dpkg.log error  

Script 5 — Open Source Manifesto Generator  
./script5.sh  

---

## Detailed Description of Scripts

Script 1 — System Identity Report  
This script collects and displays key system information such as kernel version, current user, uptime, date, and Linux distribution. It uses command substitution and variables to present the data in a formatted output.

Script 2 — FOSS Package Inspector  
This script checks whether a given package (such as VLC) is installed using the dpkg command. It uses conditional statements to display the result and a case structure to describe the package.

Script 3 — Disk and Permission Auditor  
This script iterates through important system directories using a loop. It extracts directory size, permissions, and ownership using commands like ls and du. It also checks for VLC configuration files.

Script 4 — Log File Analyzer  
This script reads a system log file line by line and searches for a keyword such as "error". It counts occurrences and displays the last few matching entries. This demonstrates file handling and text processing.

Script 5 — Open Source Manifesto Generator  
This interactive script collects user input and generates a personalized manifesto. It stores the output in a text file and displays it. It demonstrates input handling and file writing.

---

## Notes
- All scripts were tested on Ubuntu using Windows Subsystem for Linux (WSL).
- All scripts were executed successfully through the terminal.
- Screenshots of outputs are included in the project report for verification.

---
