#!/bin/bash
# Links ebs-platform -> ebs-tui [local]

~/dev/unlink-all-from-tui.sh

# Make platform-ui use your local copy of ebs-tui
cd ~/dev/ebs-tui
yarn link

cd ~/dev/platform-ui/packages/deployments-ui
yarn link "@metromile-ebs/ebs-tui"

cd ~/dev/platform-ui/packages/ebs-bpmn-modeler
yarn link "@metromile-ebs/ebs-tui"

cd ~/dev/platform-ui/packages/form-designer-ui
yarn link "@metromile-ebs/ebs-tui"

cd ~/dev/platform-ui/packages/platform-ui
yarn link "@metromile-ebs/ebs-tui"

cd ~/dev/platform-ui/packages/services-ui
yarn link "@metromile-ebs/ebs-tui"

cd ~/dev/platform-ui/packages/streamline-ui
yarn link "@metromile-ebs/ebs-tui"

cd ~/dev/ebs-tui/node_modules/baseui
yarn link

cd ~/dev/platform-ui
yarn link "baseui"

# Make ebs-tui use your local platform-ui's version of React
cd ~/dev/platform-ui/node_modules/react

yarn link

cd ~/dev/ebs-tui

yarn link "react"

# Make ebs-tui use your local platform-ui's version of React Router Dom
cd ~/dev/platform-ui/node_modules/react-router-dom

yarn link

cd ~/dev/ebs-tui

yarn link "react-router-dom"

echo Platform to TUI LINK Complete