#!/bin/bash

# Script de surveillance système

echo "=== Surveillance Disque ==="
df -h / | awk 'NR==2 {print "Espace disque utilisé: " $3 " / " $2 " (" $5 ")"}' 