#!/bin/bash

# Script de surveillance système

echo "=== Surveillance RAM ==="
free -h | awk '/^Mem:/ {print "Mémoire utilisée: " $3 " / " $2 " (" int($3/$2 * 100) "%)"}'