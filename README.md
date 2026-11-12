# my-agents

Claude Code subagents, in `.claude/agents/`.

| Agent | Purpose | Source |
|---|---|---|
| `code-reviewer` | Fresh-context review of diffs (severity-ranked, low-noise) | [everything-claude-code](https://github.com/affaan-m/everything-claude-code) |
| `tdd-guide` | Tests-first / red-green-refactor workflow | [everything-claude-code](https://github.com/affaan-m/everything-claude-code) |
| `security-reviewer` | OWASP / secrets / auth review; use on projects with auth, payments or user data | [everything-claude-code](https://github.com/affaan-m/everything-claude-code) |
| `python-pro` | Python language specialist | [VoltAgent/awesome-claude-code-subagents](https://github.com/VoltAgent/awesome-claude-code-subagents) |

To use them in another project, copy the files into that project's `.claude/agents/` (or `~/.claude/agents/` for all projects).
