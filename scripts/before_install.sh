#!/bin/bash
echo "Running BeforeInstall Hook"
sudo systemctl stop apache2 || true
