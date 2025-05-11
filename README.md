# 🔐 Automated Network Reconnaissance using Nmap and Bash

**Author:** Lukesh Gulab Navghare  
**College/Batch:** G.H Raisoni College of Engineering and Management, Nagpur  
**Submission Date:** 11/05/2025  

---

## 🔍 Overview

This mini-project simplifies one of the foundational tasks in cybersecurity: **network reconnaissance**. It leverages the power of **Nmap** integrated with a **Bash script** to automate basic scans on a target system or domain. The tool is designed to assist beginners in understanding practical network scanning operations with real-time output and logging.

---

## 🎯 Objectives

- Understand and utilize basic Nmap functions such as **Ping Scans**, **Port Scans**, and **OS Detection**.
- Learn to automate reconnaissance using **Bash scripting**.
- Build a **reusable command-line script** that stores scan outputs for documentation and analysis.

---

## 🛠️ Tools & Technologies

- **Nmap** – Network scanning tool  
- **Bash (Linux)** – Scripting language used for automation  
- **Kali Linux** – Operating system used for testing  
- **GitHub** – For version control and open-source sharing  

---

## 📁 Folder Structure
├── README.md # Project overview and documentation
├── scan.sh # Bash script to run Nmap scans
├── results/ # Folder to store scan output
│ └── targetname_scan.txt
├── screenshots/ # Screenshots of script execution and results
│ ├── scan-start.png
│ └── output-preview.png
└── LICENSE # Project license (MIT)

---

## ⚙️ Installation

1. **Clone the Repository** (if hosted on GitHub):

   ```bash
   git clone https://github.com/lukesh85/nmap-bash-scanner.git
   cd nmap-bash-scanner
**Install Nmap (if not already installed):**
sudo apt update
sudo apt install nmap
Make the Script Executable:
chmod +x scan.sh
🚀 Usage
To run a scan and save the output:
./scan.sh <target-ip-or-domain> <output-file-path>
Example 1: Scan an IP and store output
./scan.sh 192.168.1.10 results/192.168.1.10_scan.txt
Example 2: Scan a domain
./scan.sh example.com results/example.com_scan.txt
**🖼️ Screenshots**
Running the Script


Output File Example


**📄 License**
MIT License

Copyright (c) 2025 lukesh85

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
IN THE SOFTWARE.
