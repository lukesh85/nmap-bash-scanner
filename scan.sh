#!/bin/bash

echo "=== Automated Nmap Scanner ==="
read -p "Enter the target IP(s) or domain(s) (comma-separated): " input
IFS=',' read -ra targets <<< "$input"

timestamp=$(date +"%Y%m%d_%H%M%S")
mkdir -p logs

for target in "${targets[@]}"; do
    target=$(echo $target | xargs)  # Trim whitespace
    if [[ -z "$target" ]]; then
        echo "[!] Skipping empty target..."
        continue
    fi

    log_file="logs/${target//[^a-zA-Z0-9_-]/_}_${timestamp}.log"
    echo -e "\n[+] Scanning Target: $target"
    echo "Log File: $log_file"
    echo "=== Scan Start: $(date) ===" | tee "$log_file"

    echo -e "\n> Running Ping Scan..." | tee -a "$log_file"
    nmap -sn "$target" | tee -a "$log_file"

    echo -e "\n> Running Fast Port Scan (Top 100 Ports)..." | tee -a "$log_file"
    nmap -T4 -F "$target" | tee -a "$log_file"

    # Quick Scan Mode - OS detection and service version scan skipped for speed
    # echo -e "\n> Running OS Detection & Service Version Scan..." | tee -a "$log_file"
    # nmap -A "$target" | tee -a "$log_file"

    echo -e "\n=== Scan Complete: $(date) ===\n" | tee -a "$log_file"
done
