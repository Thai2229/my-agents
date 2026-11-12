# my-agents

Claude Code subagents, in `.claude/agents/`.

| Agent | Purpose | Source |
|---|---|---|
| `code-reviewer` | Fresh-context review of diffs (severity-ranked, low-noise) | [everything-claude-code](https://github.com/affaan-m/everything-claude-code) |
| `tdd-guide` | Tests-first / red-green-refactor workflow | [everything-claude-code](https://github.com/affaan-m/everything-claude-code) |
| `security-reviewer` | OWASP / secrets / auth review; use on projects with auth, payments or user data | [everything-claude-code](https://github.com/affaan-m/everything-claude-code) |
| `python-pro` | Python language specialist | [VoltAgent/awesome-claude-code-subagents](https://github.com/VoltAgent/awesome-claude-code-subagents) |

The agents are adapted for Python projects (pytest, pip-audit, bandit, ruff, mypy), and still mention the npm equivalents.
`CLAUDE.md` says when to use each one.

## Using them

**Cloud session:** attach this repo to the session alongside your project. Claude reads `CLAUDE.md` here
and runs `scripts/install.sh` if the agents aren't already loaded.

**Your own machine:** clone this repo and run

```bash
bash scripts/install.sh
```

which copies the agents into `~/.claude/agents/` so every project can use them. Re-run it after pulling changes.
