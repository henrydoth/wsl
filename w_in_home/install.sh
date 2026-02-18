#!/bin/bash
set -e

echo "🌿 Installing WSL Liêm environment..."

# Backup bashrc nếu chưa backup
if [ -f ~/.bashrc ] && [ ! -f ~/.bashrc.bak_liem ]; then
  cp ~/.bashrc ~/.bashrc.bak_liem
fi

# Apply
cp bashrc_liem ~/.bashrc
echo "" >> ~/.bashrc
echo "# --- aliases_liem ---" >> ~/.bashrc
cat aliases_liem.sh >> ~/.bashrc

echo "✅ Done. Reloading..."
source ~/.bashrc
