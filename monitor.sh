#!/bin/bash

# Script de surveillance système

echo "=== Surveillance CPU ==="
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print "Utilisation CPU: " 100 - $1 "%"}'

echo ""
echo "=== Surveillance RAM ==="
free -m | awk '/^Mem:/ {printf "Mémoire utilisée: %.1fGi / %.1fGi (%.0f%%)\n", $3/1024, $2/1024, ($3/$2)*100}'

echo ""
echo "=== Surveillance Disque ==="
df -h / | awk 'NR==2 {print "Espace disque utilisé: " $3 " / " $2 " (" $5 ")"}'
