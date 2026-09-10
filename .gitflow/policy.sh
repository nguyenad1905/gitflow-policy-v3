#!/usr/bin/env bash
set -euo pipefail
is_protected_branch(){ case "${1:-}" in main|develop) return 0;; *) return 1;; esac; }
is_work_branch(){ case "${1:-}" in feature/*|bugfix/*) return 0;; *) return 1;; esac; }
die(){ echo "ERROR: $*" >&2; exit 1; }
