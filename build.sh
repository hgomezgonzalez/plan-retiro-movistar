#!/usr/bin/env bash
# Re-generate the encrypted index.html from src/index.html using StatiCrypt.
# Usage:
#   bash build.sh                      # will prompt for password interactively
#   STATICRYPT_PASS='secret' bash build.sh  # non-interactive
set -euo pipefail

cd "$(dirname "$0")"

if [[ -n "${STATICRYPT_PASS:-}" ]]; then
  npx -y staticrypt src/index.html \
    -d . \
    --short \
    -p "$STATICRYPT_PASS"
else
  npx -y staticrypt src/index.html \
    -d . \
    --short
fi

echo "OK: index.html generado (cifrado). src/index.html sigue siendo la fuente."
