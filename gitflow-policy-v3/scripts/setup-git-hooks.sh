#!/usr/bin/env bash
# Enable local GitFlow hooks (Linux, macOS, Git Bash on Windows).
set -euo pipefail
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
git -C "$REPO_ROOT" rev-parse --is-inside-work-tree >/dev/null
git -C "$REPO_ROOT" config core.hooksPath .githooks
# Executable bit matters on Unix; no-op / best-effort on Windows NTFS.
chmod +x "$REPO_ROOT/.githooks/"* "$REPO_ROOT/scripts/setup-git-hooks.sh" 2>/dev/null || true
echo "Git hooks installed: $(git -C "$REPO_ROOT" config --get core.hooksPath)"
