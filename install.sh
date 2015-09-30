#!/bin/bash
export PACKAGE=MarkdownPreviewForAirTrack.sublime-package
export INSTALL_DIR=~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/

# プラグインを zip してインストールディレクトリにコピー
rm -f "$PACKAGE"
zip -9qr "$PACKAGE" . -x '.DS_Store' '.git/*'
cp -fv "$PACKAGE" "$INSTALL_DIR"

# Sublime Text を再起動
killall Sublime\ Text
open /Applications/Sublime\ Text.app
