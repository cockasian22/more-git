#!/bin/bash

REPO="https://github.com/cockasian22/more-git"
CONFIG_URL="$REPO/raw/main/config/gitconfig.snippet"

echo "Installing more-git..."
mkdir -p ~/.git-templates
echo "# Local ignores" > ~/.git-templates/local.gitignore

if ! grep -q "\[more-git\]" ~/.gitconfig; then
    curl -fsSL "$CONFIG_URL" >> ~/.gitconfig
    echo "Installed aliases to ~/.gitconfig"
else
    echo "more-git already installed"
fi

if ! command -v gh &> /dev/null; then
    echo "Note: Install GitHub CLI for 'git pr': https://cli.github.com"
fi
