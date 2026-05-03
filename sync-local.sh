#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$(cd "$ROOT_DIR/.." && pwd)"

cp "$SOURCE_DIR/prozess-kostenrechner.html" "$ROOT_DIR/public/index.html"
cp "$SOURCE_DIR/luka-pecar.jpeg" "$ROOT_DIR/public/luka-pecar.jpeg"
cp "$SOURCE_DIR/pecar-und-partner-logo.jpeg" "$ROOT_DIR/public/pecar-und-partner-logo.jpeg"

echo "Synced landing page into $ROOT_DIR/public"
