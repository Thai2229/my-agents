# my-agents

Claude Code subagents (`.claude/agents/`) and shared rules (`CLAUDE.md`) used by every project.

## How projects get them

The cloud environment's setup script installs them at the start of each session:

```bash
rm -rf /tmp/my-agents
if git clone -q --depth 1 https://github.com/Thai2229/my-agents /tmp/my-agents; then
  mkdir -p ~/.claude/agents
  cp /tmp/my-agents/.claude/agents/*.md ~/.claude/agents/
  cp /tmp/my-agents/CLAUDE.md ~/.claude/CLAUDE.md
fi
```

It clones `main`, so changes take effect in new sessions once they are merged.

## Sources

- `code-reviewer`, `tdd-guide`, `security-reviewer`: adapted from
  [everything-claude-code](https://github.com/affaan-m/everything-claude-code) (Python + TS/React checks)
- `python-pro` and most of the others: from
  [VoltAgent/awesome-claude-code-subagents](https://github.com/VoltAgent/awesome-claude-code-subagents)
