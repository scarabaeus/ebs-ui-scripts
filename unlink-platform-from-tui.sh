#!/bin/bash
# Un-links ebs-platform -> ebs-tui [local]

# Attempts to unlink everything (ignore any errors)
cd ~/dev/platform-ui/node_modules/react
yarn unlink

cd ~/dev/platform-ui/node_modules/react-router-dom
yarn unlink

cd ~/dev/platform-ui/packages/deployments-ui
yarn unlink "@metromile-ebs/ebs-tui"

cd ~/dev/platform-ui/packages/ebs-bpmn-modeler
yarn unlink "@metromile-ebs/ebs-tui"

cd ~/dev/platform-ui/packages/form-designer-ui
yarn unlink "@metromile-ebs/ebs-tui"

cd ~/dev/platform-ui/packages/platform-ui
yarn unlink "@metromile-ebs/ebs-tui"

cd ~/dev/platform-ui/packages/services-ui
yarn unlink "@metromile-ebs/ebs-tui"

cd ~/dev/platform-ui/packages/streamline-ui
yarn unlink "@metromile-ebs/ebs-tui"

cd ~/dev/ebs-tui
yarn unlink
yarn install --force

cd ~/dev/platform-ui
yarn install --force

echo Platform to TUI UNLINK Complete