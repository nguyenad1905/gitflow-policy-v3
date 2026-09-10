# Repository GitFlow Policy — MANDATORY for AI agents

These rules are **hard requirements**. Do not reinterpret, soften, or work around them.

```text
feature/* ──┐
            ├── PR → develop → PR → main
bugfix/* ──┘
```

## Required setup

After clone (once per workspace): run `./scripts/setup-git-hooks.sh` (Linux/macOS/Git Bash). On Windows: Git for Windows + Git Bash.

## Rules (must follow)

1. Before any edit: `git branch --show-current`. If not on `feature/*` or `bugfix/*`, run `git switch -c feature/<name>` (or `bugfix/<name>`) first.
2. Commit and push **only** on `feature/*` or `bugfix/*`. Never on `main`, `develop`, detached HEAD, or ad-hoc names.
3. Never push directly to `main` or `develop`.
4. Never create local merge commits on `main` or `develop`.
5. PR targets: `feature/*|bugfix/*` → `develop` only; `develop` → `main` only. Never open or merge a PR that breaks this.
6. Push the work branch when the user confirms work is ready, then open the PR.
7. **Never** use `--no-verify`, `--no-gpg-sign` to skip hooks, alternate refspecs into protected branches, or any bypass of these rules.
8. If a hook fails: read the ERROR, run the suggested command, retry. Do not bypass the hook.

Hooks reinforce this policy. Treat hook failures as policy violations, not obstacles to skip.
