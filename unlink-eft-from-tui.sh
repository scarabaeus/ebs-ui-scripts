#!/bin/bash
# Un-links ebs-eft -> ebs-tui [local]

# Attempts to unlink everything (ignore any errors)
cd ~/dev/eft-ui/node_modules/react
yarn unlink

cd ~/dev/eft-ui/node_modules/react-router-dom
yarn unlink

cd ~/dev/ebs-tui
yarn unlink
yarn install --force

cd ~/dev/eft-ui
yarn install --force

echo EFT to TUI UNLINK Complete