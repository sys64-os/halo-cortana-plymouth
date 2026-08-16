#!/bin/bash
# Halo Cortana Plymouth Theme Installer for Ubuntu 26.04 (Fixed)

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root (use sudo)"
  exit 1
fi

THEME_NAME="halo-cortana"
THEME_DIR="/usr/share/plymouth/themes/$THEME_NAME"

echo ">> Installing $THEME_NAME theme..."

# Clean previous installation if exists
if [ -d "$THEME_DIR" ]; then
    rm -rf "$THEME_DIR"
fi

mkdir -p "$THEME_DIR"
cp -r ./* "$THEME_DIR/"
chmod 644 "$THEME_DIR"/*
chmod 755 "$THEME_DIR"
chmod +x "$THEME_DIR/install.sh"

echo ">> Configuring alternatives..."
update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth "$THEME_DIR/$THEME_NAME.plymouth" 100
update-alternatives --set default.plymouth "$THEME_DIR/$THEME_NAME.plymouth"

echo ">> Updating initramfs... (This might take a few minutes)"
update-initramfs -u

echo ">> Installation complete! You can safely reboot."
