#!/bin/bash
# Links ebs-eft -> ebs-tui [local]

~/dev/unlink-all-from-tui.sh

# Make eft-ui use your local copy of ebs-tui
cd ~/dev/ebs-tui

yarn link

cd ~/dev/eft-ui

yarn link "@metromile-ebs/ebs-tui"

# Make ebs-tui use your local eft-ui's version of React
cd ~/dev/eft-ui/node_modules/react

yarn link

cd ~/dev/ebs-tui

yarn link "react"

# Make ebs-tui use your local eft-ui's version of React Router Dom
cd ~/dev/eft-ui/node_modules/react-router-dom

yarn link

cd ~/dev/ebs-tui

yarn link "react-router-dom"

echo EFT to TUI LINK Complete