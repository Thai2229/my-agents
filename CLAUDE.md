# my-agents

This repo holds my Claude Code subagents (`.claude/agents/`). It is often attached to a
cloud session **alongside** the project I'm actually working on. In that case, the project
repo is where code changes go; this repo only supplies the agents and these instructions.

## Setup at the start of a session

If `code-reviewer`, `tdd-guide`, `python-pro` and `security-reviewer` are not listed as
available agent types, install them as user-level agents, then continue:

```bash
bash <path-to-my-agents>/scripts/install.sh
```

Do not copy the agents into the project repo unless I ask.

## When to use each agent

| Agent | Use it when | Skip it when |
|---|---|---|
| `python-pro` | Writing or substantially changing Python code | Tiny edits you can make directly |
| `tdd-guide` | New features and bug fixes: write the failing test first | Docs, config, throwaway scripts |
| `code-reviewer` | After a change is done, before committing: review the diff in fresh context | Trivial changes (typos, comments) |
| `security-reviewer` | The change touches auth, sessions, payments, user data/PII, file uploads, or external input reaching SQL/shell/HTTP | Projects without any of those |

Typical flow for a feature: `tdd-guide` (tests) → implement (yourself or `python-pro`) →
`code-reviewer` → `security-reviewer` if it applies → fix what's real → commit.

Treat reviewer output as findings to verify, not orders: fix confirmed issues, and tell me
about any you disagree with instead of silently skipping them.

## Python defaults (unless the project says otherwise)

- Follow the project's existing tooling in `pyproject.toml`; otherwise use pytest, ruff, mypy.
- Run the tests and linters you touched before saying something works, and report real results.

## Editing the agents in this repo

- Agents in `.claude/agents/` are adapted from
  [everything-claude-code](https://github.com/affaan-m/everything-claude-code) (`code-reviewer`,
  `tdd-guide`, `security-reviewer`) and
  [VoltAgent/awesome-claude-code-subagents](https://github.com/VoltAgent/awesome-claude-code-subagents)
  (`python-pro`), tuned for Python projects.
- Keep one agent per job; don't add overlapping reviewers.
- After changing an agent, re-run `scripts/install.sh` so the session picks up the new version.
