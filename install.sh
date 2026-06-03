#!/bin/bash
# Hermes Agent One-click Installer

set -e

echo "=============================="
echo "  Hermes Agent Installer"
echo "=============================="

# Install Node.js 20
if ! command -v node &> /dev/null; then
    echo "Installing Node.js..."
    curl -fsSL https://deb.nodesource.com/setup_20.x | sudo bash -
    sudo apt install -y nodejs
fi

echo "Node: $(node -v)"

# Install Hermes
echo "Installing Hermes Agent..."
npm install -g hermes-agent

# Setup
echo "Running setup..."
hermes setup

# Gateway
echo "Setting up Telegram..."
hermes gateway setup
hermes gateway install

echo ""
echo "=============================="
echo "  Done!"
echo "=============================="
echo ""
echo "Start: hermes gateway start"
echo "Status: hermes gateway status"
echo "Docs: https://hermes-agent.nousresearch.com/docs/"
