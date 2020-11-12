#!/bin/bash
# Links ebs-portal -> ebs-tui [local]

~/dev/unlink-all-from-tui.sh

# Make portal-ui use your local copy of ebs-tui
cd ~/dev/ebs-tui

yarn link

cd ~/dev/portal-ui

yarn link "@metromile-ebs/ebs-tui"

# Make ebs-tui use your local portal-ui's version of React
cd ~/dev/portal-ui/node_modules/react

yarn link

cd ~/dev/ebs-tui

yarn link "react"

# Make ebs-tui use your local portal-ui's version of React Router Dom
cd ~/dev/portal-ui/node_modules/react-router-dom

yarn link

cd ~/dev/ebs-tui

yarn link "react-router-dom"

echo Portal to TUI LINK Complete