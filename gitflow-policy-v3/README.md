# Provider-Agnostic GitFlow Policy v3

Local hooks + `AGENTS.md` so coding agents stay on the GitFlow path. Not a remote security boundary.

## Flow

```text
feature/* ──┐
            ├── PR → develop → PR → main
bugfix/* ──┘
```

## Local setup

Run once after cloning. Needs **Git** (on Windows: **Git for Windows** + run setup in **Git Bash**).

```bash
./scripts/setup-git-hooks.sh
git config --get core.hooksPath
```

Expected: `.githooks`

## Normal workflow

```bash
git switch -c feature/my-change
git add .
git commit -m "feat: my change"
git push -u origin feature/my-change
```

After completion and user confirmation, open `feature/my-change -> develop`.
For release promotion, use `develop -> main`.

Hooks can be bypassed (`--no-verify`). `core.hooksPath` is per-clone — run the setup script in each workspace.
