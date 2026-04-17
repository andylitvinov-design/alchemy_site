#!/bin/zsh

set -euo pipefail

PROJECTS_ROOT="/Users/andriilitvinov/projects"
PORT=8870
HUB_URL="http://localhost:${PORT}/Alchemy_site/index.html"

if ! lsof -iTCP:${PORT} -sTCP:LISTEN >/dev/null 2>&1; then
  nohup python3 -m http.server "${PORT}" --bind 127.0.0.1 --directory "$PROJECTS_ROOT" </dev/null >/tmp/alchemy_site_hub_server.log 2>&1 &!
  sleep 1
fi

open -a "/Applications/Google Chrome.app" "$HUB_URL"
