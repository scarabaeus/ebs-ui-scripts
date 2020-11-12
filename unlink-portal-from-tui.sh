#!/bin/bash
# Un-links ebs-portal -> ebs-tui [local]

# Attempts to unlink everything (ignore any errors)
cd ~/dev/portal-ui/node_modules/react
yarn unlink

cd ~/dev/portal-ui/node_modules/react-router-dom
yarn unlink

cd ~/dev/ebs-tui
yarn unlink
yarn install --force

cd ~/dev/portal-ui
yarn install --force

echo Portal to TUI UNLINK Complete