# Repository GitFlow Policy

```text
feature/* ──┐
            ├── PR → develop → PR → main
bugfix/* ──┘
```

0. After clone, enable hooks once: `./scripts/setup-git-hooks.sh` (Linux/macOS/Git Bash). On Windows use Git for Windows and run this in Git Bash.
1. `main` accepts changes only through a PR from `develop`.
2. `develop` accepts changes only through a PR from `feature/*` or `bugfix/*`.
3. Direct pushes to `main` and `develop` are forbidden.
4. Commit and push only on `feature/*` or `bugfix/*` (never on `main`, `develop`, or ad-hoc branch names).
5. Do not create local merge commits while on `main` or `develop`.
6. Finish and push a work branch before opening its PR to `develop`.
7. Do not bypass policy with `--no-verify` or alternate refspecs.

Before editing: run `git branch --show-current`. If you are on `main`, `develop`, or not on `feature/*`/`bugfix/*`, create/switch to a work branch first (`git switch -c feature/<name>`).
A `post-checkout` WARN on protected branches is a reminder only — it does not block checkout.
AI agents should commit on work branches, push when the user confirms the work is ready, then create the PR. Never merge a PR that violates the source/target rules.
If a hook fails, follow the command in the ERROR message (usually `git switch -c feature/<name>`).
