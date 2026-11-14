# Skill sources

Copied from these repos at the commits below. To update one, copy the new version over it,
re-apply the local changes listed, and review the diff before merging.

| Skill | Repo | Commit | License | Local changes |
|---|---|---|---|---|
| `humanizer` | [blader/humanizer](https://github.com/blader/humanizer) | b48c832 | MIT | none |
| `ponytail`, `ponytail-debt` | [dietrichgebert/ponytail](https://github.com/dietrichgebert/ponytail) | 96608e0 | MIT | Only these two of its six skills; no hooks or status line |
| `impeccable` | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) | 32f10a7 | Apache-2.0 | Script paths `.claude/skills/impeccable/scripts` changed to `~/.claude/skills/impeccable/scripts` |
| `ui-ux-pro-max` | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) | 6ae86f6 | MIT | `${CLAUDE_PLUGIN_ROOT}/.claude/skills/ui-ux-pro-max` changed to `$HOME/.claude/skills/ui-ux-pro-max`; `scripts/tests/` removed |
| `design-taste-frontend` | [Leonxlnx/taste-skill](https://github.com/Leonxlnx/taste-skill) | f6b7657 | MIT | Folder renamed from `taste-skill` to match the skill's name (its Stop hook looks for it there); description rewritten to "use only when the user asks for it by name", so it is not picked for ordinary UI work (it is heavy: headless browser checks) |

What runs or downloads:
- `impeccable` runs `scripts/impeccable`, which downloads a helper binary from the repo's GitHub
  releases on first use and checks it against `scripts/engine-checksums.txt`. Without it, the
  skill falls back to reading files directly.
- `ui-ux-pro-max` runs a local Python search over its CSV data. No network.
- `design-taste-frontend` needs Node 22+ and Chromium. Its scripts fetch icons from jsdelivr and
  search for stock photos. It adds a Stop hook that runs its checker, only for a page it was asked to build.
