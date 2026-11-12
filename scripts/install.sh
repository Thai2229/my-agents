#!/usr/bin/env bash
# Install the agents in this repo as user-level Claude Code agents (~/.claude/agents),
# so they are available in every project in this session/machine.
# Usage: bash scripts/install.sh            (from anywhere)
set -euo pipefail
src="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/.claude/agents"
dest="${CLAUDE_CONFIG_DIR:-$HOME/.claude}/agents"
mkdir -p "$dest"
for f in "$src"/*.md; do
  cp -f "$f" "$dest/"
  echo "installed $(basename "$f" .md) -> $dest/"
done
