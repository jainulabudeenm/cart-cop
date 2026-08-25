#!/usr/bin/env bash
# Rebuild skills/cart-cop.skill from skills/cart-cop/.
# The folder is the source of truth. The .skill zip is the artifact npx installs.
# Run this after editing anything under skills/cart-cop/.
set -euo pipefail

cd "$(dirname "$0")/.."

rm -f skills/cart-cop.skill
cd skills
zip -qrD cart-cop.skill cart-cop -x '.*' -x '*/.*'

echo "packed skills/cart-cop.skill"
unzip -Z1 cart-cop.skill | sed 's/^/  /'
