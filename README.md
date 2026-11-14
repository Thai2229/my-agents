# my-agents

Claude Code subagents (`.claude/agents/`), skills (`.claude/skills/`) and shared rules (`CLAUDE.md`) used by every project.

## How projects get them

The cloud environment's setup script installs them at the start of each session:

```bash
rm -rf /tmp/my-agents
if git clone -q --depth 1 https://github.com/Thai2229/my-agents /tmp/my-agents; then
  mkdir -p ~/.claude/agents
  cp /tmp/my-agents/.claude/agents/*.md ~/.claude/agents/
  if [ -d /tmp/my-agents/.claude/skills ]; then
    mkdir -p ~/.claude/skills
    cp -r /tmp/my-agents/.claude/skills/. ~/.claude/skills/
  fi
  cp /tmp/my-agents/CLAUDE.md ~/.claude/CLAUDE.md
fi
```

It clones `main`, so changes take effect in new sessions once they are merged.

## Skills

Agents get skills through the `skills:` list in their frontmatter, which loads the skill's
instructions when the agent starts. The main session can use any installed skill.
Where each skill came from, and what was changed: [`.claude/skills/SOURCES.md`](.claude/skills/SOURCES.md).

## Agent sources

- `code-reviewer`, `tdd-guide`, `security-reviewer`: adapted from
  [everything-claude-code](https://github.com/affaan-m/everything-claude-code) (Python + TS/React checks)
- `python-pro` and most of the others: from
  [VoltAgent/awesome-claude-code-subagents](https://github.com/VoltAgent/awesome-claude-code-subagents)
