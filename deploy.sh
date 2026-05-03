#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

./sync-local.sh

git add public/index.html public/luka-pecar.jpeg public/pecar-und-partner-logo.jpeg .github/workflows/deploy-pages.yml .gitignore README.md sync-local.sh deploy.sh

if git diff --cached --quiet; then
  echo "No changes to commit."
else
  git commit -m "${1:-Update landing page}"
fi

git push
