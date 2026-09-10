# Provider-Agnostic GitFlow Policy v3

**`AGENTS.md` is mandatory policy for AI coding agents** — they must follow GitFlow strictly. Local hooks reinforce that policy (fail early). Independent of Cursor, Claude Code, Codex, Gemini, etc.

## Flow

```text
feature/* ──┐
            ├── PR → develop → PR → main
bugfix/* ──┘
```

## Local setup

Run once after cloning (each workspace). Needs **Git** (on Windows: **Git for Windows** + **Git Bash**).

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
