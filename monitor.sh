#!/bin/bash

# Script de surveillance système

echo "=== Surveillance CPU ==="
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "Utilisation CPU: " 100 - $1 "%"}'

echo ""
echo "=== Surveillance RAM ==="
free -h | awk '/^Mem:/ {print "Mémoire utilisée: " $3 " / " $2 " (" int($3/$2 * 100) "%)"}'
